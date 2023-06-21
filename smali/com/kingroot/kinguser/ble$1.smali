.class Lcom/kingroot/kinguser/ble$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ble;->jF(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bzI:I

.field final synthetic bzJ:Lcom/kingroot/kinguser/ble;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ble;I)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kingroot/kinguser/ble$1;->bzJ:Lcom/kingroot/kinguser/ble;

    iput p2, p0, Lcom/kingroot/kinguser/ble$1;->bzI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/ble$1;->bzI:I

    iget-object v1, p0, Lcom/kingroot/kinguser/ble$1;->bzJ:Lcom/kingroot/kinguser/ble;

    invoke-static {v1}, Lcom/kingroot/kinguser/ble;->a(Lcom/kingroot/kinguser/ble;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vz;->mU()V

    .line 54
    :goto_1
    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vz;->mT()V

    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0
.end method
