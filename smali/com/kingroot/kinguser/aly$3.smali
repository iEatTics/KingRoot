.class Lcom/kingroot/kinguser/aly$3;
.super Lcom/kingroot/kinguser/alz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/alz",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aly;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aly;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/kingroot/kinguser/aly$3;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-direct {p0}, Lcom/kingroot/kinguser/alz;-><init>()V

    return-void
.end method


# virtual methods
.method public Ha()Ljava/io/File;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "appsmarket_amwc.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic Hc()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aly$3;->Hg()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public Hg()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
