.class Lcom/kingroot/kinguser/axq$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbg:Lcom/kingroot/kinguser/axq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axq;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$13;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 782
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1885e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 783
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$13;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v0}, Lcom/kingroot/kinguser/axq;->c(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/auj$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/auj$a;->Qk()V

    .line 784
    return-void
.end method
