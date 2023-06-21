.class Lcom/kingroot/kinguser/aek$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aek;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aek;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/kingroot/kinguser/aek$2;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 3

    .prologue
    .line 450
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 451
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 452
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    .line 453
    iget-object v2, p0, Lcom/kingroot/kinguser/aek$2;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v2, v1, v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)V

    .line 454
    return-void
.end method
