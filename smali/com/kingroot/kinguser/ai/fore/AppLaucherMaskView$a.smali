.class Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field aqL:J

.field public aqM:F

.field public aqN:F

.field public aqO:I

.field public aqP:F

.field public aqQ:F


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqL:J

    .line 563
    const/16 v0, 0xff

    iput v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqO:I

    .line 564
    iput v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqP:F

    .line 565
    iput v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqQ:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$1;)V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;-><init>()V

    return-void
.end method
