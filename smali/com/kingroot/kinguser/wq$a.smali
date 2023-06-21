.class public Lcom/kingroot/kinguser/wq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/wq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public Ns:Landroid/view/ViewGroup;

.field public Nt:F

.field public Nu:Lcom/android/animation/Animator;

.field public Nv:Lcom/android/animation/Animator;

.field public type:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FI)V
    .locals 0
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    .line 378
    iput p2, p0, Lcom/kingroot/kinguser/wq$a;->Nt:F

    .line 379
    iput p3, p0, Lcom/kingroot/kinguser/wq$a;->type:I

    .line 380
    return-void
.end method
