.class Lcom/kingroot/kinguser/brq$6;
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
.field private final synthetic bKF:Z

.field final synthetic bKu:Lcom/kingroot/kinguser/brq;

.field private final synthetic bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

.field private final synthetic bKz:Lcom/kingroot/kinguser/brq$b;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brq;ZLcom/kingroot/kinguser/brq$b;Lcom/tencent/qqpim/discovery/AdRequestData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brq$6;->bKu:Lcom/kingroot/kinguser/brq;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/brq$6;->bKF:Z

    iput-object p3, p0, Lcom/kingroot/kinguser/brq$6;->bKz:Lcom/kingroot/kinguser/brq$b;

    iput-object p4, p0, Lcom/kingroot/kinguser/brq$6;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 424
    iget-boolean v1, p0, Lcom/kingroot/kinguser/brq$6;->bKF:Z

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/kingroot/kinguser/brq$6;->bKz:Lcom/kingroot/kinguser/brq$b;

    iget-object v1, v1, Lcom/kingroot/kinguser/brq$b;->bKI:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/kingroot/kinguser/brq$6;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget v2, v2, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/brq$6;->bKu:Lcom/kingroot/kinguser/brq;

    iget-object v2, p0, Lcom/kingroot/kinguser/brq$6;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget-object v3, p0, Lcom/kingroot/kinguser/brq$6;->bKz:Lcom/kingroot/kinguser/brq$b;

    iget-boolean v4, p0, Lcom/kingroot/kinguser/brq$6;->bKF:Z

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-static {v1, v2, v3, v0}, Lcom/kingroot/kinguser/brq;->b(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V

    .line 428
    return-void
.end method
