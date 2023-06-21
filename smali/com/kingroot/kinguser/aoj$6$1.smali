.class Lcom/kingroot/kinguser/aoj$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoj$6;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGa:Lcom/kingroot/kinguser/aoj$6;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoj$6;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/kingroot/kinguser/aoj$6$1;->aGa:Lcom/kingroot/kinguser/aoj$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$6$1;->aGa:Lcom/kingroot/kinguser/aoj$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/aoj$6;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->e(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/ale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ale;->r(IZ)V

    .line 554
    return-void
.end method
