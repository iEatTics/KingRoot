.class public Lcom/kingroot/kinguser/net/shark/KuSharkManager$2;
.super Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/awn;

.field final synthetic val$listener:Lcom/kingroot/kinguser/cat;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awn;Lcom/kingroot/kinguser/cat;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/net/shark/KuSharkManager$2;->this$0:Lcom/kingroot/kinguser/awn;

    iput-object p2, p0, Lcom/kingroot/kinguser/net/shark/KuSharkManager$2;->val$listener:Lcom/kingroot/kinguser/cat;

    invoke-direct {p0}, Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(IIIILjava/lang/String;[B)V
    .locals 6

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/net/shark/KuSharkManager$2;->val$listener:Lcom/kingroot/kinguser/cat;

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-static {p5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qq/taf/jce/JceStruct;

    .line 74
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v0, p6}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 75
    invoke-virtual {v5, v0}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/net/shark/KuSharkManager$2;->val$listener:Lcom/kingroot/kinguser/cat;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cat;->a(IIIILcom/qq/taf/jce/JceStruct;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method
