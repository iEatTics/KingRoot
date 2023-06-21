.class Lcom/kingroot/kinguser/axm$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->D(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aWb:Ljava/lang/String;

.field final synthetic bak:Z

.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$16;->this$0:Lcom/kingroot/kinguser/axm;

    iput-object p2, p0, Lcom/kingroot/kinguser/axm$16;->aWb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/kingroot/kinguser/axm$16;->bak:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$16;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->A(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/yp;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bet;

    iget-object v1, p0, Lcom/kingroot/kinguser/axm$16;->aWb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/kingroot/kinguser/axm$16;->bak:Z

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bet;->j(Ljava/lang/String;Z)V

    .line 1352
    return-void
.end method
