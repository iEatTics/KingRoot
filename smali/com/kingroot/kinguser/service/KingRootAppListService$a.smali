.class final Lcom/kingroot/kinguser/service/KingRootAppListService$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/service/KingRootAppListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private bjc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private bjd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/kingroot/kinguser/service/KingRootAppListService;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/service/KingRootAppListService;)V
    .locals 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->this$0:Lcom/kingroot/kinguser/service/KingRootAppListService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->bjc:Ljava/util/HashMap;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->bjd:Ljava/util/ArrayList;

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/aaz;->qy()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->bjd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->bjd:Ljava/util/ArrayList;

    const-string v1, "13fd04e376114fcb2a248547c949b885"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method


# virtual methods
.method public checkPermission()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->bjc:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 183
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    .line 182
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 185
    aget-object v2, v2, v0

    .line 186
    invoke-static {v2}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->bjd:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->bjc:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->bjc:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
