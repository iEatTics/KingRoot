.class Lcom/kingroot/kinguser/aof$4;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aof;->ah(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aof;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aof;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lcom/kingroot/kinguser/aof$4;->this$0:Lcom/kingroot/kinguser/aof;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/kingroot/kinguser/aof$4;->this$0:Lcom/kingroot/kinguser/aof;

    invoke-static {v0}, Lcom/kingroot/kinguser/aof;->e(Lcom/kingroot/kinguser/aof;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aof$4;->add(Ljava/lang/Object;)Z

    return-void
.end method
