.class Lcom/kingroot/kinguser/awo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awo;->a(ILjava/lang/String;[BLjava/lang/String;[BLcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVa:Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;

.field final synthetic aVb:Lcom/kingroot/kinguser/awo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awo;Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/kingroot/kinguser/awo$3;->aVb:Lcom/kingroot/kinguser/awo;

    iput-object p2, p0, Lcom/kingroot/kinguser/awo$3;->aVa:Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 7

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/awo$3;->aVa:Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;

    if-eqz v0, :cond_1

    .line 151
    :try_start_0
    const-string v5, ""

    .line 152
    const/4 v6, 0x0

    .line 153
    if-eqz p5, :cond_0

    .line 154
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {p5}, Lcom/qq/taf/jce/JceStruct;->toByteArray()[B

    move-result-object v6

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/awo$3;->aVa:Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;->onFinish(IIIILjava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method
