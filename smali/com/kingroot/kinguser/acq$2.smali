.class Lcom/kingroot/kinguser/acq$2;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/acq;->b(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic abb:Lcom/kingroot/kinguser/acq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/acq;I)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/kingroot/kinguser/acq$2;->abb:Lcom/kingroot/kinguser/acq;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Integer;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TR;)I"
        }
    .end annotation

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acq$2;->abb:Lcom/kingroot/kinguser/acq;

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/acq;->m(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 191
    :catch_0
    move-exception v0

    .line 195
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 184
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/acq$2;->a(Ljava/lang/Integer;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
