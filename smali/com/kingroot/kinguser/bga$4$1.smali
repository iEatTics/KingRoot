.class Lcom/kingroot/kinguser/bga$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bga$4;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bot:Lcom/kingroot/kinguser/bga$4;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bga$4;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$4$1;->bot:Lcom/kingroot/kinguser/bga$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$4$1;->bot:Lcom/kingroot/kinguser/bga$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/bga$4;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->u(Lcom/kingroot/kinguser/bga;)Lcom/kingroot/kinguser/bfx;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bfx;->r(IZ)V

    .line 616
    return-void
.end method
