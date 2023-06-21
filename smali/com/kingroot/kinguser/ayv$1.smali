.class Lcom/kingroot/kinguser/ayv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayv;->a(Landroid/os/Bundle;Z)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bdh:Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;

.field final synthetic this$0:Lcom/kingroot/kinguser/ayv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayv;Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kingroot/kinguser/ayv$1;->this$0:Lcom/kingroot/kinguser/ayv;

    iput-object p2, p0, Lcom/kingroot/kinguser/ayv$1;->bdh:Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 6

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/ayv$1;->bdh:Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ayv$1;->bdh:Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;

    invoke-static {p5}, Lcom/kingroot/loader/common/protocol/SerializableParcel;->obtain(Ljava/io/Serializable;)Lcom/kingroot/loader/common/protocol/SerializableParcel;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;->onFinish(IIIILcom/kingroot/loader/common/protocol/SerializableParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method
