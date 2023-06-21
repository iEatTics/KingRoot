.class Lcom/kingroot/kinguser/brq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/brq;->a(Lcom/tencent/qqpim/discovery/AdRequestData;ZLcom/kingroot/kinguser/brq$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bKu:Lcom/kingroot/kinguser/brq;

.field private final synthetic bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

.field private final synthetic bKz:Lcom/kingroot/kinguser/brq$b;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brq$2;->bKu:Lcom/kingroot/kinguser/brq;

    iput-object p2, p0, Lcom/kingroot/kinguser/brq$2;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iput-object p3, p0, Lcom/kingroot/kinguser/brq$2;->bKz:Lcom/kingroot/kinguser/brq$b;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$2;->bKu:Lcom/kingroot/kinguser/brq;

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$2;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget-object v2, p0, Lcom/kingroot/kinguser/brq$2;->bKz:Lcom/kingroot/kinguser/brq$b;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/brq;->a(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V

    .line 451
    return-void
.end method
