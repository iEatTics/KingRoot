.class Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bvw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/examination/service/CloudCheckService;->cloudCheckApks(Ljava/lang/String;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

.field final synthetic aMo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    iput-object p2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/securemodule/api/AppInfo;

    .line 619
    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    iget-object v3, v0, Lcom/tencent/securemodule/api/AppInfo;->apkPath:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$800(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/lang/String;Lcom/tencent/securemodule/api/AppInfo;)V

    .line 620
    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$900(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Lcom/tencent/securemodule/api/AppInfo;)V

    .line 621
    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    invoke-static {v2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$1000(Lcom/kingroot/kinguser/examination/service/CloudCheckService;)Ljava/util/List;

    move-result-object v2

    iget-object v0, v0, Lcom/tencent/securemodule/api/AppInfo;->apkPath:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/securemodule/api/AppInfo;

    .line 626
    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    iget-object v3, v0, Lcom/tencent/securemodule/api/AppInfo;->apkPath:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$800(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/lang/String;Lcom/tencent/securemodule/api/AppInfo;)V

    .line 627
    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$900(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Lcom/tencent/securemodule/api/AppInfo;)V

    .line 628
    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    invoke-static {v2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$1000(Lcom/kingroot/kinguser/examination/service/CloudCheckService;)Ljava/util/List;

    move-result-object v2

    iget-object v0, v0, Lcom/tencent/securemodule/api/AppInfo;->apkPath:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 630
    :cond_1
    return-void
.end method

.method public onFinish(I)V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    iget-object v1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$800(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/lang/String;Lcom/tencent/securemodule/api/AppInfo;)V

    .line 636
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    iget-object v1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMo:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$1100(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/lang/String;I)V

    .line 637
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    invoke-static {v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$1000(Lcom/kingroot/kinguser/examination/service/CloudCheckService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;->aMo:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 638
    return-void
.end method
