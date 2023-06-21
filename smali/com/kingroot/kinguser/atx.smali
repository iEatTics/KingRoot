.class public Lcom/kingroot/kinguser/atx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aQK:Landroid/view/WindowManager$LayoutParams;

.field private aQL:Lcom/kingroot/kinguser/atw;

.field private anQ:Lcom/kingroot/kinguser/tk;

.field private mContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/kingroot/kinguser/atx;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atx;)Lcom/kingroot/kinguser/atw;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->aQL:Lcom/kingroot/kinguser/atw;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/atx;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/atx;)Lcom/kingroot/kinguser/tk;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->anQ:Lcom/kingroot/kinguser/tk;

    return-object v0
.end method


# virtual methods
.method public jh(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 32
    const-string v0, "addStartGameMaskView"

    invoke-static {v0}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atx;->anQ:Lcom/kingroot/kinguser/tk;

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/kingroot/kinguser/atx;->mWindowManager:Landroid/view/WindowManager;

    .line 35
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atx;->aQK:Landroid/view/WindowManager$LayoutParams;

    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->aQK:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->aQK:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->aQK:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->aQK:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->aQK:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->aQK:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 43
    new-instance v0, Lcom/kingroot/kinguser/atw;

    iget-object v1, p0, Lcom/kingroot/kinguser/atx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/atw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atx;->aQL:Lcom/kingroot/kinguser/atw;

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->aQL:Lcom/kingroot/kinguser/atw;

    new-instance v1, Lcom/kingroot/kinguser/atx$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atx$1;-><init>(Lcom/kingroot/kinguser/atx;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/atw;->setStartGameMaskViewControllerListener(Lcom/kingroot/kinguser/atw$a;)V

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->anQ:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->anQ:Lcom/kingroot/kinguser/tk;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/tk;->s(J)V

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kingroot/kinguser/atx;->aQL:Lcom/kingroot/kinguser/atw;

    iget-object v2, p0, Lcom/kingroot/kinguser/atx;->aQK:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/atx;->aQL:Lcom/kingroot/kinguser/atw;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/atw;->jh(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
