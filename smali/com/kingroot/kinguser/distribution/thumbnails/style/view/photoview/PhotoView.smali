.class public Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$d;,
        Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$b;,
        Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$e;,
        Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$a;,
        Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;,
        Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;
    }
.end annotation


# instance fields
.field private ND:Z

.field private aIA:Lcom/kingroot/kinguser/apr;

.field private aIB:Landroid/view/ScaleGestureDetector;

.field private aIC:Z

.field private aID:Z

.field private aIE:Z

.field private aIF:Z

.field private aIG:Z

.field private aIH:Z

.field private aII:Z

.field private aIJ:Z

.field private aIK:Z

.field private aIL:F

.field private aIM:I

.field private aIN:I

.field private aIO:F

.field private aIP:F

.field private aIQ:Landroid/graphics/RectF;

.field private aIR:Landroid/graphics/RectF;

.field private aIS:Landroid/graphics/PointF;

.field private aIT:Landroid/graphics/PointF;

.field private aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

.field private aIV:Landroid/graphics/RectF;

.field private aIW:Lcom/kingroot/kinguser/app;

.field private aIX:J

.field private aIY:Ljava/lang/Runnable;

.field private aIZ:Landroid/view/View$OnLongClickListener;

.field private aIi:Landroid/graphics/RectF;

.field private aIj:Landroid/graphics/RectF;

.field private aIk:Landroid/graphics/RectF;

.field private aIl:Landroid/graphics/PointF;

.field private aIm:F

.field private aIn:F

.field private aIo:Landroid/widget/ImageView$ScaleType;

.field private aIp:I

.field private aIq:I

.field private aIr:F

.field private aIs:I

.field private aIt:I

.field private aIu:I

.field private aIv:I

.field private aIw:Landroid/graphics/Matrix;

.field private aIx:Landroid/graphics/Matrix;

.field private aIy:Landroid/graphics/Matrix;

.field private aIz:Landroid/graphics/Matrix;

.field private aJa:Lcom/kingroot/kinguser/apq;

.field private aJb:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private aJc:Ljava/lang/Runnable;

.field private aJd:Landroid/view/GestureDetector$OnGestureListener;

.field private aiQ:Landroid/view/View$OnClickListener;

.field private isInit:Z

.field private mDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIs:I

    .line 33
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIt:I

    .line 34
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIu:I

    .line 35
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIv:I

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIw:Landroid/graphics/Matrix;

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIy:Landroid/graphics/Matrix;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    .line 53
    iput-boolean v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->ND:Z

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIQ:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIR:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    .line 79
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIS:Landroid/graphics/PointF;

    .line 80
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIT:Landroid/graphics/PointF;

    .line 82
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    .line 661
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJa:Lcom/kingroot/kinguser/apq;

    .line 678
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$2;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJb:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 744
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$3;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJc:Ljava/lang/Runnable;

    .line 753
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJd:Landroid/view/GestureDetector$OnGestureListener;

    .line 93
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIs:I

    .line 33
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIt:I

    .line 34
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIu:I

    .line 35
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIv:I

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIw:Landroid/graphics/Matrix;

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIy:Landroid/graphics/Matrix;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    .line 53
    iput-boolean v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->ND:Z

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIQ:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIR:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    .line 79
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIS:Landroid/graphics/PointF;

    .line 80
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIT:Landroid/graphics/PointF;

    .line 82
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    .line 661
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJa:Lcom/kingroot/kinguser/apq;

    .line 678
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$2;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJb:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 744
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$3;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJc:Ljava/lang/Runnable;

    .line 753
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJd:Landroid/view/GestureDetector$OnGestureListener;

    .line 98
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->init()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIs:I

    .line 33
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIt:I

    .line 34
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIu:I

    .line 35
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIv:I

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIw:Landroid/graphics/Matrix;

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIy:Landroid/graphics/Matrix;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    .line 53
    iput-boolean v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->ND:Z

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIQ:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIR:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    .line 79
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIS:Landroid/graphics/PointF;

    .line 80
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIT:Landroid/graphics/PointF;

    .line 82
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    .line 661
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJa:Lcom/kingroot/kinguser/apq;

    .line 678
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$2;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJb:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 744
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$3;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJc:Ljava/lang/Runnable;

    .line 753
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJd:Landroid/view/GestureDetector$OnGestureListener;

    .line 103
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->init()V

    .line 104
    return-void
.end method

.method static synthetic A(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic B(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIO:F

    return v0
.end method

.method static synthetic C(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIP:F

    return v0
.end method

.method static synthetic D(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIQ:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic E(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIq:I

    return v0
.end method

.method static synthetic F(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIt:I

    return v0
.end method

.method static synthetic G(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIV:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic H(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIY:Ljava/lang/Runnable;

    return-object v0
.end method

.method private LA()V
    .locals 5

    .prologue
    .line 422
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 423
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 425
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 427
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LC()V

    .line 428
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LB()V

    .line 429
    return-void
.end method

.method private LB()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 432
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 433
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->e(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 434
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 435
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 436
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIw:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIy:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 437
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIw:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 438
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIO:F

    .line 439
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIP:F

    .line 440
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    .line 441
    iput v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIM:I

    .line 442
    iput v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIN:I

    .line 443
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 444
    return-void
.end method

.method private LC()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIy:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIw:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 448
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIy:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 449
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIy:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 451
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 453
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIJ:Z

    .line 454
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIK:Z

    .line 455
    return-void

    :cond_0
    move v0, v2

    .line 453
    goto :goto_0

    :cond_1
    move v1, v2

    .line 454
    goto :goto_1
.end method

.method private LD()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v4, 0x42b40000    # 90.0f

    .line 575
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJh:Z

    if-eqz v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aII:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIn:F

    rem-float/2addr v0, v4

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 578
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIn:F

    div-float/2addr v0, v4

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    .line 579
    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIn:F

    rem-float/2addr v2, v4

    .line 581
    const/high16 v3, 0x42340000    # 45.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    .line 582
    add-float/2addr v0, v4

    .line 586
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    iget v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIn:F

    float-to-int v3, v3

    float-to-int v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->M(II)V

    .line 588
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIn:F

    .line 591
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    .line 593
    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_6

    .line 595
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->h(FF)V

    move v0, v1

    .line 601
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 602
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 604
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIS:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 605
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIT:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 607
    iput v6, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIM:I

    .line 608
    iput v6, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIN:I

    .line 610
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 611
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 612
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIO:F

    sub-float v4, v1, v4

    iget v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIP:F

    sub-float v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 613
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 614
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIn:F

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 615
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIQ:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 617
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIQ:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Landroid/graphics/RectF;)V

    .line 618
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->start()V

    goto/16 :goto_0

    .line 583
    :cond_5
    const/high16 v3, -0x3dcc0000    # -45.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 584
    sub-float/2addr v0, v4

    goto/16 :goto_1

    .line 596
    :cond_6
    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIr:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 597
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIr:F

    .line 598
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    iget v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIr:F

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->h(FF)V

    goto/16 :goto_2
.end method

.method private LE()V
    .locals 3

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIF:Z

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIR:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 742
    :cond_0
    return-void
.end method

.method private Lt()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 258
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aID:Z

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIE:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIw:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIH:Z

    .line 266
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getWidth()I

    move-result v2

    .line 269
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getHeight()I

    move-result v3

    .line 270
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->e(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 271
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 276
    sub-int v0, v2, v4

    div-int/lit8 v6, v0, 0x2

    .line 277
    sub-int v0, v3, v5

    div-int/lit8 v7, v0, 0x2

    .line 283
    if-le v4, v2, :cond_5

    .line 284
    int-to-float v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    .line 287
    :goto_1
    if-le v5, v3, :cond_2

    .line 288
    int-to-float v1, v3

    int-to-float v2, v5

    div-float/2addr v1, v2

    .line 291
    :cond_2
    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    .line 293
    :goto_2
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIw:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 294
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIw:Landroid/graphics/Matrix;

    int-to-float v2, v6

    int-to-float v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 295
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIw:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIw:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v9

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIO:F

    .line 299
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v9

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIP:F

    .line 301
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIS:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 302
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIT:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIS:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 304
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LC()V

    .line 306
    sget-object v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$5;->aJf:[I

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIo:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 330
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->isInit:Z

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIW:Lcom/kingroot/kinguser/app;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIX:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIv:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIW:Lcom/kingroot/kinguser/app;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/app;)V

    .line 336
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIW:Lcom/kingroot/kinguser/app;

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 291
    goto :goto_2

    .line 308
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->Lu()V

    goto :goto_3

    .line 311
    :pswitch_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->Lv()V

    goto :goto_3

    .line 314
    :pswitch_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->Lw()V

    goto :goto_3

    .line 317
    :pswitch_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->Lx()V

    goto :goto_3

    .line 320
    :pswitch_4
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->Ly()V

    goto :goto_3

    .line 323
    :pswitch_5
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->Lz()V

    goto :goto_3

    .line 326
    :pswitch_6
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LA()V

    goto :goto_3

    :cond_5
    move v0, v1

    goto/16 :goto_1

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private Lu()V
    .locals 5

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aID:Z

    if-nez v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIE:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 345
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->e(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 346
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 348
    int-to-float v0, v1

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    int-to-float v0, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 349
    :cond_2
    int-to-float v0, v1

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 350
    int-to-float v1, v2

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 352
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    :goto_1
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 356
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LC()V

    .line 358
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LB()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 352
    goto :goto_1
.end method

.method private Lv()V
    .locals 5

    .prologue
    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 365
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 367
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    :goto_0
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    .line 369
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 371
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LC()V

    .line 372
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LB()V

    .line 374
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 367
    goto :goto_0
.end method

.method private Lw()V
    .locals 5

    .prologue
    .line 377
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 379
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 381
    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    :goto_0
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 385
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LC()V

    .line 386
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LB()V

    .line 388
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 381
    goto :goto_0
.end method

.method private Lx()V
    .locals 5

    .prologue
    .line 391
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 396
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LC()V

    .line 397
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LB()V

    .line 399
    :cond_0
    return-void
.end method

.method private Ly()V
    .locals 3

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->Lx()V

    .line 404
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    .line 405
    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIN:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIN:I

    .line 406
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 407
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LC()V

    .line 408
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LB()V

    .line 409
    return-void
.end method

.method private Lz()V
    .locals 3

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->Lx()V

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 415
    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIN:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIN:I

    .line 416
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 417
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LC()V

    .line 418
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LB()V

    .line 419
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIL:F

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIL:F

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;FF)F
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->f(FF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIM:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIY:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 622
    .line 625
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 626
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->c(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 627
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    .line 636
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    .line 637
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 638
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    .line 647
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 648
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJj:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJj:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 649
    :cond_2
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    iget v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIM:I

    iget v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIN:I

    neg-int v0, v0

    neg-int v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->c(IIII)V

    .line 651
    :cond_3
    return-void

    .line 629
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 630
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 631
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    .line 632
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 640
    :cond_6
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 641
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    .line 642
    :cond_7
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 643
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 719
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 720
    :goto_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->right:F

    move v3, v1

    .line 722
    :goto_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    .line 723
    invoke-virtual {p3, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 736
    :goto_2
    return-void

    .line 719
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 720
    :cond_1
    iget v1, p2, Landroid/graphics/RectF;->right:F

    move v3, v1

    goto :goto_1

    .line 727
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 728
    :goto_3
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 730
    :goto_4
    cmpl-float v4, v1, v2

    if-lez v4, :cond_5

    .line 731
    invoke-virtual {p3, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 727
    :cond_3
    iget v1, p2, Landroid/graphics/RectF;->top:F

    goto :goto_3

    .line 728
    :cond_4
    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    .line 735
    :cond_5
    invoke-virtual {p3, v0, v1, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2
.end method

.method private static a(Landroid/view/View;[I)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1212
    aget v0, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p1, v3

    .line 1213
    aget v0, p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p1, v4

    .line 1215
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1216
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1217
    check-cast v0, Landroid/view/View;

    .line 1219
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_0

    .line 1232
    :goto_1
    return-void

    .line 1221
    :cond_0
    aget v1, p1, v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, p1, v3

    .line 1222
    aget v1, p1, v4

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, p1, v4

    .line 1224
    aget v1, p1, v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v3

    .line 1225
    aget v1, p1, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v4

    .line 1227
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 1230
    :cond_1
    aget v0, p1, v3

    int-to-float v0, v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    aput v0, p1, v3

    .line 1231
    aget v0, p1, v4

    int-to-float v0, v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    aput v0, p1, v4

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aII:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIn:F

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;FF)F
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->g(FF)F

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIN:I

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIV:Landroid/graphics/RectF;

    return-object p1
.end method

.method private b(Landroid/graphics/RectF;)Z
    .locals 3

    .prologue
    .line 654
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aII:Z

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIF:Z

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIn:F

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    return p1
.end method

.method private c(Landroid/graphics/RectF;)Z
    .locals 3

    .prologue
    .line 658
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIC:Z

    return p1
.end method

.method static synthetic d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private d(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_3

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    if-gtz v0, :cond_3

    .line 237
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_3

    .line 238
    :cond_2
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIH:Z

    return p1
.end method

.method private static e(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 245
    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 246
    :cond_0
    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 247
    :cond_1
    return v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIp:I

    return v0
.end method

.method private f(FF)F
    .locals 2

    .prologue
    .line 703
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIu:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIu:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    .line 704
    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    return v0
.end method

.method private static f(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 252
    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 253
    :cond_0
    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 254
    :cond_1
    return v0
.end method

.method private g(FF)F
    .locals 2

    .prologue
    .line 708
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIu:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIu:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    .line 709
    return v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LC()V

    return-void
.end method

.method static synthetic h(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aiQ:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIZ:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    .line 107
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIo:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIo:Landroid/widget/ImageView$ScaleType;

    .line 109
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/apr;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJa:Lcom/kingroot/kinguser/apq;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/apr;-><init>(Lcom/kingroot/kinguser/apq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIA:Lcom/kingroot/kinguser/apr;

    .line 110
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJd:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->mDetector:Landroid/view/GestureDetector;

    .line 111
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJb:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIB:Landroid/view/ScaleGestureDetector;

    .line 112
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 113
    mul-float v1, v0, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIs:I

    .line 114
    mul-float v1, v0, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIt:I

    .line 115
    const/high16 v1, 0x430c0000    # 140.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIu:I

    .line 117
    const/16 v0, 0x23

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIp:I

    .line 118
    const/16 v0, 0x154

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIq:I

    .line 119
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIr:F

    .line 120
    return-void
.end method

.method static synthetic j(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aJc:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIC:Z

    return v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIJ:Z

    return v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIK:Z

    return v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    return-object v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIM:I

    return v0
.end method

.method static synthetic r(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIF:Z

    return v0
.end method

.method static synthetic s(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LE()V

    return-void
.end method

.method static synthetic t(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIR:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic u(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIN:I

    return v0
.end method

.method static synthetic v(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIS:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic w(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIT:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic x(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIH:Z

    return v0
.end method

.method static synthetic y(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIr:F

    return v0
.end method

.method static synthetic z(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/app;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1273
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->isInit:Z

    if-eqz v0, :cond_7

    .line 1274
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->reset()V

    .line 1276
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getInfo()Lcom/kingroot/kinguser/app;

    move-result-object v1

    .line 1278
    iget-object v0, p1, Lcom/kingroot/kinguser/app;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, v1, Lcom/kingroot/kinguser/app;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v0, v2

    .line 1279
    iget-object v2, p1, Lcom/kingroot/kinguser/app;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v1, v1, Lcom/kingroot/kinguser/app;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v1, v2, v1

    .line 1280
    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    .line 1282
    :goto_0
    iget-object v1, p1, Lcom/kingroot/kinguser/app;->aIh:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p1, Lcom/kingroot/kinguser/app;->aIh:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    .line 1283
    iget-object v2, p1, Lcom/kingroot/kinguser/app;->aIh:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p1, Lcom/kingroot/kinguser/app;->aIh:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    .line 1285
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 1286
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget-object v6, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1287
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v7

    sub-float v5, v1, v5

    iget-object v6, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v7

    sub-float v6, v2, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1288
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1289
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    iget v5, p1, Lcom/kingroot/kinguser/app;->aIn:F

    invoke-virtual {v3, v5, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1290
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LC()V

    .line 1292
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIS:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1293
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIT:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1295
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v1, v5, v1

    float-to-int v1, v1

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v2, v5, v2

    float-to-int v2, v2

    invoke-virtual {v3, v8, v8, v1, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->c(IIII)V

    .line 1296
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    invoke-virtual {v1, v0, v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->h(FF)V

    .line 1297
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    iget v1, p1, Lcom/kingroot/kinguser/app;->aIn:F

    float-to-int v1, v1

    invoke-virtual {v0, v1, v8}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->M(II)V

    .line 1299
    iget-object v0, p1, Lcom/kingroot/kinguser/app;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p1, Lcom/kingroot/kinguser/app;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/app;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p1, Lcom/kingroot/kinguser/app;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 1300
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/app;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p1, Lcom/kingroot/kinguser/app;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v0, v1

    .line 1301
    iget-object v0, p1, Lcom/kingroot/kinguser/app;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p1, Lcom/kingroot/kinguser/app;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v0, v2

    .line 1302
    cmpl-float v0, v1, v4

    if-lez v0, :cond_1

    move v1, v4

    .line 1303
    :cond_1
    cmpl-float v0, v2, v4

    if-lez v0, :cond_2

    move v2, v4

    .line 1305
    :cond_2
    iget-object v0, p1, Lcom/kingroot/kinguser/app;->aIo:Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v3, :cond_5

    new-instance v6, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$e;

    invoke-direct {v6, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$e;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    .line 1307
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    sub-float v3, v4, v1

    sub-float/2addr v4, v2

    iget v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIq:I

    div-int/lit8 v5, v5, 0x3

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->a(FFFFILcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$a;)V

    .line 1309
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    div-float/2addr v3, v7

    invoke-interface {v6}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$a;->LF()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1310
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIz:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mClipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1311
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mClipRect:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIV:Landroid/graphics/RectF;

    .line 1314
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->start()V

    .line 1319
    :goto_2
    return-void

    :cond_4
    move v0, v1

    .line 1280
    goto/16 :goto_0

    .line 1305
    :cond_5
    iget-object v0, p1, Lcom/kingroot/kinguser/app;->aIo:Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v3, :cond_6

    new-instance v6, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$b;

    invoke-direct {v6, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$b;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    goto :goto_1

    :cond_6
    new-instance v6, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$d;

    invoke-direct {v6, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$d;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    goto :goto_1

    .line 1316
    :cond_7
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIW:Lcom/kingroot/kinguser/app;

    .line 1317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIX:J

    goto :goto_2
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIC:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 935
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->u(F)Z

    move-result v0

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIC:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 941
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->v(F)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 558
    iget-boolean v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->ND:Z

    if-eqz v1, :cond_3

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIC:Z

    .line 562
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 563
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIA:Lcom/kingroot/kinguser/apr;

    invoke-virtual {v2, p1}, Lcom/kingroot/kinguser/apr;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 564
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIB:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 566
    if-eq v1, v0, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LD()V

    .line 570
    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIV:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIV:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIV:Landroid/graphics/RectF;

    .line 553
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 554
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->ND:Z

    .line 189
    return-void
.end method

.method public getAnimaDuring()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIq:I

    return v0
.end method

.method public getDefaultAnimaDuring()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x154

    return v0
.end method

.method public getInfo()Lcom/kingroot/kinguser/app;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1181
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1182
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1183
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Landroid/view/View;[I)V

    .line 1184
    aget v2, v0, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    aget v3, v0, v6

    int-to-float v3, v3

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    aget v4, v0, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1185
    new-instance v0, Lcom/kingroot/kinguser/app;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIk:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    iget v6, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    iget v7, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIn:F

    iget-object v8, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIo:Landroid/widget/ImageView$ScaleType;

    invoke-direct/range {v0 .. v8}, Lcom/kingroot/kinguser/app;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIr:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v7, -0x2

    const/high16 v9, -0x80000000

    const/4 v8, -0x1

    .line 459
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aID:Z

    if-nez v0, :cond_0

    .line 460
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 526
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 465
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->e(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 466
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 468
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 469
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 471
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 472
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 477
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 479
    if-nez v0, :cond_1

    .line 480
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 483
    :cond_1
    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v7, v8, :cond_5

    .line 484
    if-nez v5, :cond_2

    move v1, v2

    .line 499
    :cond_2
    :goto_1
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v8, :cond_7

    .line 500
    if-nez v6, :cond_3

    move v3, v4

    .line 515
    :cond_3
    :goto_2
    iget-boolean v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIG:Z

    if-eqz v5, :cond_4

    int-to-float v5, v2

    int-to-float v6, v4

    div-float/2addr v5, v6

    int-to-float v6, v1

    int-to-float v7, v3

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    .line 517
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 518
    int-to-float v6, v1

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 520
    cmpg-float v7, v5, v6

    if-gez v7, :cond_9

    .line 521
    :goto_3
    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v6, v8, :cond_a

    .line 522
    :goto_4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v8, :cond_b

    .line 525
    :cond_4
    :goto_5
    invoke-virtual {p0, v1, v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 490
    :cond_5
    if-eq v5, v10, :cond_2

    .line 492
    if-ne v5, v9, :cond_6

    .line 493
    if-gt v2, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v2

    .line 495
    goto :goto_1

    .line 506
    :cond_7
    if-eq v6, v10, :cond_3

    .line 508
    if-ne v6, v9, :cond_8

    .line 509
    if-gt v4, v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_8
    move v3, v4

    .line 511
    goto :goto_2

    :cond_9
    move v5, v6

    .line 520
    goto :goto_3

    .line 521
    :cond_a
    int-to-float v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    goto :goto_4

    .line 522
    :cond_b
    int-to-float v0, v4

    mul-float/2addr v0, v5

    float-to-int v3, v0

    goto :goto_5
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 536
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 538
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 539
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIl:Landroid/graphics/PointF;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 541
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIE:Z

    if-nez v0, :cond_0

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIE:Z

    .line 543
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->Lt()V

    .line 545
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1235
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIx:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1236
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->LC()V

    .line 1237
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIm:F

    .line 1238
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIM:I

    .line 1239
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIN:I

    .line 1240
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0

    .prologue
    .line 530
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 531
    iput-boolean p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIG:Z

    .line 532
    return-void
.end method

.method public setAnimaDuring(I)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIq:I

    .line 168
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    if-nez p1, :cond_1

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aID:Z

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aID:Z

    if-nez v0, :cond_2

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aID:Z

    .line 231
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->Lt()V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :goto_0
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    return-void

    .line 209
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIU:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 154
    return-void
.end method

.method public setMaxAnimFromWaiteTime(I)V
    .locals 0

    .prologue
    .line 201
    iput p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIv:I

    .line 202
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIr:F

    .line 175
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aiQ:Landroid/view/View$OnClickListener;

    .line 133
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIZ:Landroid/view/View$OnLongClickListener;

    .line 147
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIo:Landroid/widget/ImageView$ScaleType;

    .line 138
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIo:Landroid/widget/ImageView$ScaleType;

    .line 140
    if-eq v0, p1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->Lt()V

    .line 142
    :cond_0
    return-void
.end method

.method public u(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 915
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return v0

    .line 916
    :cond_1
    cmpg-float v1, p1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-gez v1, :cond_0

    .line 918
    :cond_2
    cmpl-float v1, p1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    .line 920
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public v(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 924
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 929
    :cond_0
    :goto_0
    return v0

    .line 925
    :cond_1
    cmpg-float v1, p1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-gez v1, :cond_0

    .line 927
    :cond_2
    cmpl-float v1, p1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIi:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->aIj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    .line 929
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
