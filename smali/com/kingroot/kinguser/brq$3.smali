.class Lcom/kingroot/kinguser/brq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/brq;->c(Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bKu:Lcom/kingroot/kinguser/brq;

.field private final synthetic bKv:Lcom/kingroot/kinguser/brl;

.field private final synthetic bKw:Lcom/kingroot/kinguser/bsp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brq;Lcom/kingroot/kinguser/brl;Lcom/kingroot/kinguser/bsp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brq$3;->bKu:Lcom/kingroot/kinguser/brq;

    iput-object p2, p0, Lcom/kingroot/kinguser/brq$3;->bKv:Lcom/kingroot/kinguser/brl;

    iput-object p3, p0, Lcom/kingroot/kinguser/brq$3;->bKw:Lcom/kingroot/kinguser/bsp;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$3;->bKv:Lcom/kingroot/kinguser/brl;

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahK()Lcom/kingroot/kinguser/bsd;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/kingroot/kinguser/brq$3;->bKw:Lcom/kingroot/kinguser/bsp;

    iget-object v1, v1, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/brq$3;->bKv:Lcom/kingroot/kinguser/brl;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bsd;->a(Ljava/lang/String;Lcom/kingroot/kinguser/brl;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$3;->bKu:Lcom/kingroot/kinguser/brq;

    invoke-static {v0}, Lcom/kingroot/kinguser/brq;->a(Lcom/kingroot/kinguser/brq;)Lcom/kingroot/kinguser/brz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$3;->bKw:Lcom/kingroot/kinguser/bsp;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/brz;->a(Lcom/kingroot/kinguser/bsp;I)V

    .line 168
    return-void
.end method
