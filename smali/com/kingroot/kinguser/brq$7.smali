.class Lcom/kingroot/kinguser/brq$7;
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
    iput-object p1, p0, Lcom/kingroot/kinguser/brq$7;->bKu:Lcom/kingroot/kinguser/brq;

    iput-object p2, p0, Lcom/kingroot/kinguser/brq$7;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iput-object p3, p0, Lcom/kingroot/kinguser/brq$7;->bKz:Lcom/kingroot/kinguser/brq$b;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$7;->bKu:Lcom/kingroot/kinguser/brq;

    invoke-static {v0}, Lcom/kingroot/kinguser/brq;->b(Lcom/kingroot/kinguser/brq;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$7;->bKu:Lcom/kingroot/kinguser/brq;

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$7;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget-object v2, p0, Lcom/kingroot/kinguser/brq$7;->bKz:Lcom/kingroot/kinguser/brq$b;

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/brq;->a(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V

    .line 444
    :goto_0
    return-void

    .line 439
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportNewError.NONETWORK AdRequestData:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$7;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget v1, v1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$7;->bKz:Lcom/kingroot/kinguser/brq$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/brq$b;->bKI:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$7;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget v1, v1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$7;->bKu:Lcom/kingroot/kinguser/brq;

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$7;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget-object v2, p0, Lcom/kingroot/kinguser/brq$7;->bKz:Lcom/kingroot/kinguser/brq$b;

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/brq;->b(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V

    goto :goto_0
.end method
