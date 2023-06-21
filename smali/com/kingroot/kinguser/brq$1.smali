.class Lcom/kingroot/kinguser/brq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/brq;->a(Lcom/tencent/qqpim/discovery/AdDisplayModel;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bKu:Lcom/kingroot/kinguser/brq;

.field private final synthetic bKv:Lcom/kingroot/kinguser/brl;

.field private final synthetic bKw:Lcom/kingroot/kinguser/bsp;

.field private final synthetic bKx:J


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brq;Lcom/kingroot/kinguser/brl;Lcom/kingroot/kinguser/bsp;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brq$1;->bKu:Lcom/kingroot/kinguser/brq;

    iput-object p2, p0, Lcom/kingroot/kinguser/brq$1;->bKv:Lcom/kingroot/kinguser/brl;

    iput-object p3, p0, Lcom/kingroot/kinguser/brq$1;->bKw:Lcom/kingroot/kinguser/bsp;

    iput-wide p4, p0, Lcom/kingroot/kinguser/brq$1;->bKx:J

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$1;->bKv:Lcom/kingroot/kinguser/brl;

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahK()Lcom/kingroot/kinguser/bsd;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/kingroot/kinguser/brq$1;->bKw:Lcom/kingroot/kinguser/bsp;

    iget-object v1, v1, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/brq$1;->bKv:Lcom/kingroot/kinguser/brl;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bsd;->a(Ljava/lang/String;Lcom/kingroot/kinguser/brl;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$1;->bKu:Lcom/kingroot/kinguser/brq;

    invoke-static {v0}, Lcom/kingroot/kinguser/brq;->a(Lcom/kingroot/kinguser/brq;)Lcom/kingroot/kinguser/brz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$1;->bKw:Lcom/kingroot/kinguser/bsp;

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/kingroot/kinguser/brq$1;->bKx:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/kingroot/kinguser/brz;->a(Lcom/kingroot/kinguser/bsp;IJ)V

    .line 115
    return-void
.end method
