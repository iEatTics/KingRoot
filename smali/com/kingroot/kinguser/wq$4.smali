.class Lcom/kingroot/kinguser/wq$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bhj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/wq;->a([Lcom/kingroot/kinguser/wq$a;[F[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Nq:Lcom/kingroot/kinguser/wq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/wq;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/kingroot/kinguser/wq$4;->Nq:Lcom/kingroot/kinguser/wq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 195
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/kingroot/kinguser/wq$4;->Nq:Lcom/kingroot/kinguser/wq;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {v0, p1, p2}, Lcom/kingroot/kinguser/wq;->a(Lcom/kingroot/kinguser/wq;Landroid/view/ViewGroup;F)V

    .line 198
    :cond_0
    return-void
.end method
