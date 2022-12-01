#ifndef _CGRAPHICS
#define _CGRAPHICS

#include "types.h"

#include "Kyoto/CTimeProvider.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CLight.hpp"
#include "Kyoto/Graphics/CTevCombiners.hpp"
#include "Kyoto/Math/CMatrix4f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "dolphin/gx.h"
#include "dolphin/mtx.h"

enum ERglFogMode {
  kRFM_None = GX_FOG_NONE,

  kRFM_PerspLin = GX_FOG_PERSP_LIN,
  kRFM_PerspExp = GX_FOG_PERSP_EXP,
  kRFM_PerspExp2 = GX_FOG_ORTHO_EXP2,
  kRFM_PerspRevExp = GX_FOG_PERSP_REVEXP,
  kRFM_PerspRevExp2 = GX_FOG_PERSP_REVEXP2,

  kRFM_OrthoLin = GX_FOG_ORTHO_LIN,
  kRFM_OrthoExp = GX_FOG_ORTHO_EXP,
  kRFM_OrthoExp2 = GX_FOG_ORTHO_EXP2,
  kRFM_OrthoRevExp = GX_FOG_ORTHO_REVEXP,
  kRFM_OrthoRevExp2 = GX_FOG_ORTHO_REVEXP2,
};

enum ERglTevStage {
  kTS_Stage0,
  kTS_Stage1,
  kTS_Stage2,
  kTS_Stage3,
  kTS_Stage4,
  kTS_Stage5,
  kTS_Stage6,
  kTS_Stage7,
  kTS_Stage8,
  kTS_Stage9,
  kTS_Stage10,
  kTS_Stage11,
  kTS_Stage12,
  kTS_Stage13,
  kTS_Stage14,
  kTS_Stage15,
  kTS_MaxStage,
};

enum ERglPrimitive {
  kP_Quads = GX_QUADS,
  kP_Triangles = GX_TRIANGLES,
  kP_TriangleStrip = GX_TRIANGLESTRIP,
  kP_TriangleFan = GX_TRIANGLEFAN,
  kP_Lines = GX_LINES,
  kP_LineStrip = GX_LINESTRIP,
  kP_Points = GX_POINTS,
};

enum ERglBlendMode {
  kBM_None = GX_BM_NONE,
  kBM_Blend = GX_BM_BLEND,
  kBM_Logic = GX_BM_LOGIC,
  kBM_Subtract = GX_BM_SUBTRACT,
  kBM_Max = GX_MAX_BLENDMODE,
};

enum ERglBlendFactor {
  kBF_Zero = GX_BL_ZERO,
  kBF_One = GX_BL_ONE,
  kBF_SrcColor = GX_BL_SRCCLR,
  kBF_InvSrcColor = GX_BL_INVSRCCLR,
  kBF_SrcAlpha = GX_BL_SRCALPHA,
  kBF_InvSrcAlpha = GX_BL_INVSRCALPHA,
  kBF_DstAlpha = GX_BL_DSTALPHA,
  kBF_InvDstAlpha = GX_BL_INVDSTALPHA,
  kBF_DstColor = GX_BL_DSTCLR,
  kBF_InvDstColor = GX_BL_INVDSTCLR,
};

enum ERglLogicOp {
  kLO_Clear = GX_LO_CLEAR,
  kLO_And = GX_LO_AND,
  kLO_RevAnd = GX_LO_REVAND,
  kLO_Copy = GX_LO_COPY,
  kLO_InvAnd = GX_LO_INVAND,
  kLO_NoOp = GX_LO_NOOP,
  kLO_Xor = GX_LO_XOR,
  kLO_Or = GX_LO_OR,
  kLO_Nor = GX_LO_NOR,
  kLO_Equiv = GX_LO_EQUIV,
  kLO_Inv = GX_LO_INV,
  kLO_RevOr = GX_LO_REVOR,
  kLO_InvCopy = GX_LO_INVCOPY,
  kLO_InvOr = GX_LO_INVOR,
  kLO_NAnd = GX_LO_NAND,
  kLO_Set = GX_LO_SET,
};

enum ERglAlphaFunc {
  kAF_Never = GX_NEVER,
  kAF_Less = GX_LESS,
  kAF_Equal = GX_EQUAL,
  kAF_LEqual = GX_LEQUAL,
  kAF_Greater = GX_GREATER,
  kAF_NEqual = GX_NEQUAL,
  kAF_GEqual = GX_GEQUAL,
  kAF_Always = GX_ALWAYS,
};

enum ERglAlphaOp {
  kAO_And = GX_AOP_AND,
  kAO_Or = GX_AOP_OR,
  kAO_Xor = GX_AOP_XOR,
  kAO_XNor = GX_AOP_XNOR,
  kAO_Max = GX_MAX_ALPHAOP,
};

enum ERglEnum {
  kE_Never = GX_NEVER,
  kE_Less = GX_LESS,
  kE_Equal = GX_EQUAL,
  kE_LEqual = GX_LEQUAL,
  kE_Greater = GX_GREATER,
  kE_NEqual = GX_NEQUAL,
  kE_GEqual = GX_GEQUAL,
  kE_Always = GX_ALWAYS,
};

enum ERglCullMode {
  kCM_None = GX_CULL_NONE,
  kCM_Front = GX_CULL_FRONT,
  kCM_Back = GX_CULL_BACK,
  kCM_All = GX_CULL_ALL,
};

enum ERglLight {
  kLight0,
  kLight1,
  kLight2,
  kLight3,
  kLight4,
  kLight5,
  kLight6,
  kLight7,
  kLightMax,
};

struct CViewport {
  int mLeft;
  int mTop;
  int mWidth;
  int mHeight;
  float mHalfWidth;
  float mHalfHeight;
};

class COsContext;
class CTexture;
class CTimeProvider;
class CTexture;

// TODO
typedef struct {
  float x;
  float y;
} Vec2, *Vec2Ptr;

class CGraphics {
public:
  class CRenderState {
  public:
    CRenderState();

    void ResetFlushAll();

  private:
    int x0_;
    int x4_;
  };
  class CProjectionState {
  public:
    CProjectionState(bool persp, float left, float right, float top, float bottom, float near,
                     float far)
    : x0_persp(persp)
    , x4_left(left)
    , x8_right(right)
    , xc_top(top)
    , x10_bottom(bottom)
    , x14_near(near)
    , x18_far(far) {}

    bool IsPerspective() const { return x0_persp; }
    float GetLeft() const { return x4_left; }
    float GetRight() const { return x8_right; }
    float GetTop() const { return xc_top; }
    float GetBottom() const { return x10_bottom; }
    float GetNear() const { return x14_near; }
    float GetFar() const { return x18_far; }

  private:
    bool x0_persp;
    float x4_left;
    float x8_right;
    float xc_top;
    float x10_bottom;
    float x14_near;
    float x18_far;
  };

  static bool Startup(const COsContext& osContext, uint fifoSize, void* fifoBase);
  static GXTexRegion* TexRegionCallback(const GXTexObj* obj, GXTexMapID id);
  static void InitGraphicsVariables();
  static void Shutdown();
  static void InitGraphicsDefaults();
  static void ConfigureFrameBuffer(const COsContext& osContext);
  static void EnableLight(ERglLight light);
  static void LoadLight(ERglLight light, const CLight& info);
  static void SetLightState(uchar lights);
  static void SetViewMatrix();
  static void SetScissor(int left, int bottom, int width, int height);
  static void ClearBackAndDepthBuffers();

  static void SetIdentityViewPointMatrix();
  static void SetIdentityModelMatrix();
  static void SetViewport(int left, int bottom, int width, int height);
  static void SetPerspective(float fovy, float aspect, float znear, float zfar);
  static void SetCopyClear(const CColor& color, float depth);
  static void SetClearColor(const CColor& color);
  static void SetDepthRange(float near, float far);
  static void FlushProjection();
  static void SetDefaultVtxAttrFmt();
  static CMatrix4f GetPerspectiveProjectionMatrix();
  static CMatrix4f CalculatePerspectiveMatrix(float fovy, float aspect, float znear, float zfar);
  
  static float GetDepthNear() { return mDepthNear; }
  static float GetDepthFar() { return mDepthFar; }

  static bool IsBeginSceneClearFb();
  static void SetIsBeginSceneClearFb(bool);
  static void BeginScene();
  static void EndScene();
  static void SwapBuffers();
  static void SetTevOp(ERglTevStage stage, const CTevCombiners::CTevPass& pass);
  static void StreamBegin(ERglPrimitive primitive);
  static void StreamColor(uint color);
  static void StreamColor(float, float, float, float);
  static void StreamColor(const CColor& color);
  static void StreamTexcoord(float u, float v);
  static void StreamVertex(float, float, float);
  static void StreamVertex(const CVector3f& vtx);
  static void StreamVertex(const float*);
  static void StreamNormal(const float*);
  static void StreamEnd();
  static void Render2D(const CTexture& tex, int x, int y, int w, int h, const CColor& col);
  static void DrawPrimitive(ERglPrimitive primitive, const float* pos, const CVector3f& normal, const CColor& col, int numVerts);

  static void VideoPreCallback(u32 retraceCount);
  static void VideoPostCallback(u32 retraceCount);

  static const CViewport& GetViewport() { return mViewport; }
  static const CVector3f& GetViewPoint() { return mViewPoint; }
  static const CTransform4f& GetViewMatrix() { return mViewMatrix; }
  static const CTransform4f& GetModelMatrix() { return mModelMatrix; }
  static void SetViewPointMatrix(const CTransform4f&);
  static void SetBrightness(float b) { mBrightness = b; }
  static void SetOrtho(float left, float right, float top, float bottom, float znear, float zfar);

  static float GetSecondsMod900();
  static void SetExternalTimeProvider(CTimeProvider* provider);
  static void DisableAllLights();

  static void SetAmbientColor(const CColor&);
  static void SetFog(ERglFogMode mode, float startz, float endz, const CColor& color);

  static void SetModelMatrix(const CTransform4f& xf);
  static void SetAlphaCompare(ERglAlphaFunc comp0, uchar ref0, ERglAlphaOp op, ERglAlphaFunc comp1,
                              uchar ref1);
  static void SetDepthWriteMode(bool test, ERglEnum comp, bool write);
  static void SetBlendMode(ERglBlendMode mode, ERglBlendFactor src, ERglBlendFactor dst,
                           ERglLogicOp op);
  static void SetCullMode(ERglCullMode cullMode);
  static void SetTevStates(uchar);

  // Screen Position
  static void sub_80309564(uint* stretch, uint* xOffset, uint* yOffset);
  static void sub_803094b0(uint stretch, uint xOffset, uint yOffset);

  // Render
  static void Render2D(const CTexture& tex, int x, int y, int w, int h, const CColor& col);

  static CTevCombiners::CTevPass& kEnvPassthru;
  static CTevCombiners::CTevPass kEnvModulateConstColor;
  static CTevCombiners::CTevPass kEnvConstColor;
  static CTevCombiners::CTevPass kEnvModulate;
  static CTevCombiners::CTevPass kEnvDecal;
  static CTevCombiners::CTevPass kEnvBlend;
  static CTevCombiners::CTevPass kEnvReplace;
  static CTevCombiners::CTevPass kEnvModulateAlpha;
  static CTevCombiners::CTevPass kEnvModulateColor;
  static CTevCombiners::CTevPass kEnvModulateColorByAlpha;

private:
  static CRenderState sRenderState;
  static VecPtr vtxBuffer;
  static VecPtr nrmBuffer;
  static Vec2Ptr txtBuffer0;
  static Vec2Ptr txtBuffer1;
  static GXColor* clrBuffer;
  static bool mJustReset;
  static ERglCullMode mCullMode;
  static int mNumLightsActive;
  static float mDepthNear;
  static VecPtr mpVtxBuffer;
  static VecPtr mpNrmBuffer;
  static Vec2Ptr mpTxtBuffer0;
  static Vec2Ptr mpTxtBuffer1;
  static GXColor* mpClrBuffer;
  static int mNumPrimitives;
  static int mFrameCounter;
  static float mFramesPerSecond;
  static float mLastFramesPerSecond;
  static int mNumBreakpointsWaiting;
  static int mFlippingState;
  static bool mLastFrameUsedAbove;
  static bool mInterruptLastFrameUsedAbove;
  static uchar mLightActive;
  static uchar mLightsWereOn;
  static void* mpFrameBuf1;
  static void* mpFrameBuf2;
  static void* mpCurrenFrameBuf;
  static int mSpareBufferSize;
  static void* mpSpareBuffer;
  static int mSpareBufferTexCacheSize;
  static GXTexRegionCallback mGXDefaultTexRegionCallback;
  static void* mpFifo;
  static GXFifoObj* mpFifoObj;
  static int mRenderTimings;
  static float mSecondsMod900;
  static CTimeProvider* mpExternalTimeProvider;
  // lbl_805A9408
  // lbl_805A940C
  // lbl_805A9410
  // "nextTexRgn$2336"
  // "init$2337"
  // "nextTexRgnCI$2339"
  // "init$2340"

  static CVector3f kDefaultPositionVector;
  static CVector3f kDefaultDirectionVector;
  static CProjectionState mProj;
  static CTransform4f mViewMatrix;
  static CTransform4f mModelMatrix;
  static CColor mClearColor;
  static CVector3f mViewPoint;
  static CViewport mViewport;
  static ELightType mLightTypes[8];
  static GXLightObj mLightObj[8];
  static GXTexRegion mTexRegions[GX_MAX_TEXMAP];
  static GXTexRegion mTexRegionsCI[GX_MAX_TEXMAP / 2];
  static GXRenderModeObj mRenderModeObj;
  static Mtx mGXViewPointMatrix;
  static Mtx mGXModelMatrix;
  static Mtx mGxModelView;
  static Mtx mCameraMtx;

  // .sdata
  static bool mIsBeginSceneClearFb;
  static ERglEnum mDepthFunc;
  static ERglPrimitive mCurrentPrimitive;
  static float mDepthFar;
  static u32 mClearDepthValue; // = GX_MAX_Z24
  static bool mIsGXModelMatrixIdentity;
  static bool mFirstFrame;
  static bool mUseVideoFilter;
  static float mBrightness;
  // static const float mBrightnessMin;
  // static const float mBrightnessMax;
  static Vec2 mBrightnessRange;
};

#endif // _CGRAPHICS
