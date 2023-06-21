.class Lcom/kingroot/kinguser/bco$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bco;->XA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bhv:Lcom/kingroot/kinguser/bco;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bco;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/kingroot/kinguser/bco$2;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/kingroot/kinguser/bco$2;->bhv:Lcom/kingroot/kinguser/bco;

    iget-object v1, p0, Lcom/kingroot/kinguser/bco$2;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v1}, Lcom/kingroot/kinguser/bco;->c(Lcom/kingroot/kinguser/bco;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bco;->a(Lcom/kingroot/kinguser/bco;J)J

    .line 454
    iget-object v0, p0, Lcom/kingroot/kinguser/bco$2;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v0}, Lcom/kingroot/kinguser/bco;->d(Lcom/kingroot/kinguser/bco;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 455
    return-void
.end method
