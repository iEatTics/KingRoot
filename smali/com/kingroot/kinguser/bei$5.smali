.class Lcom/kingroot/kinguser/bei$5;
.super Lcom/kingroot/kinguser/alz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bei;->YZ()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/alz",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/kingroot/kinguser/thread/StaticEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ble:Lcom/kingroot/kinguser/bei;

.field final synthetic yH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bei;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/kingroot/kinguser/bei$5;->ble:Lcom/kingroot/kinguser/bei;

    iput-object p2, p0, Lcom/kingroot/kinguser/bei$5;->yH:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/alz;-><init>()V

    return-void
.end method


# virtual methods
.method public Ha()Ljava/io/File;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/bei$5;->yH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic Hc()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bei$5;->Zs()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public Zs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/thread/StaticEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
