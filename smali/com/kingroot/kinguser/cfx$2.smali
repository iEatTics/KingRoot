.class Lcom/kingroot/kinguser/cfx$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfx;->d(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYC:[B

.field final synthetic cdV:Lcom/kingroot/kinguser/cfx;

.field final synthetic cdW:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfx;I[B)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/kingroot/kinguser/cfx$2;->cdV:Lcom/kingroot/kinguser/cfx;

    iput p2, p0, Lcom/kingroot/kinguser/cfx$2;->cdW:I

    iput-object p3, p0, Lcom/kingroot/kinguser/cfx$2;->bYC:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx$2;->cdV:Lcom/kingroot/kinguser/cfx;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfx;->b(Lcom/kingroot/kinguser/cfx;)Lcom/kingroot/kinguser/cfx$a;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/cfx$2;->cdW:I

    iget-object v2, p0, Lcom/kingroot/kinguser/cfx$2;->bYC:[B

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/cfx$a;->c(I[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
