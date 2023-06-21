.class public Lcom/kingroot/kinguser/net/shark/KuSharkManager$3;
.super Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awn;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/awn;

.field final synthetic val$listener:Lcom/kingroot/kinguser/cat;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/awn;Lcom/kingroot/kinguser/cat;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kingroot/kinguser/net/shark/KuSharkManager$3;->this$0:Lcom/kingroot/kinguser/awn;

    iput-object p2, p0, Lcom/kingroot/kinguser/net/shark/KuSharkManager$3;->val$listener:Lcom/kingroot/kinguser/cat;

    invoke-direct {p0}, Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(IIIILjava/lang/String;[B)V
    .locals 6

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/net/shark/KuSharkManager$3;->val$listener:Lcom/kingroot/kinguser/cat;

    if-eqz v0, :cond_1

    .line 103
    const/4 v5, 0x0

    .line 104
    :try_start_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p6, :cond_0

    .line 105
    invoke-static {p5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    .line 107
    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, p6}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 108
    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    move-object v5, v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/net/shark/KuSharkManager$3;->val$listener:Lcom/kingroot/kinguser/cat;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cat;->a(IIIILcom/qq/taf/jce/JceStruct;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method
