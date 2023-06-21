.class public Lcom/kingroot/kinguser/service/KingRootAppListService$KingrootAppListMgr;
.super Lcom/kingroot/kinguser/service/IKingrootAppList$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/service/KingRootAppListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KingrootAppListMgr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/service/KingRootAppListService;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/service/KingRootAppListService;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$KingrootAppListMgr;->this$0:Lcom/kingroot/kinguser/service/KingRootAppListService;

    invoke-direct {p0}, Lcom/kingroot/kinguser/service/IKingrootAppList$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;ILjava/lang/String;J)I
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 50
    iget-object v1, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$KingrootAppListMgr;->this$0:Lcom/kingroot/kinguser/service/KingRootAppListService;

    invoke-static {v1}, Lcom/kingroot/kinguser/service/KingRootAppListService;->a(Lcom/kingroot/kinguser/service/KingRootAppListService;)Lcom/kingroot/kinguser/service/KingRootAppListService$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    :goto_0
    return v0

    .line 53
    :cond_0
    if-ne p2, v8, :cond_1

    move v5, v8

    .line 54
    :goto_1
    cmp-long v0, p4, v6

    if-lez v0, :cond_2

    move-wide v1, p4

    .line 55
    :goto_2
    if-eqz p3, :cond_3

    move-object v3, p3

    .line 56
    :goto_3
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/bbt;->addRule(JLjava/lang/String;Ljava/lang/String;IJ)V

    move v0, v8

    .line 57
    goto :goto_0

    :cond_1
    move v5, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/bhc;->ach()J

    move-result-wide v1

    goto :goto_2

    .line 55
    :cond_3
    invoke-static {p1}, Lcom/kingroot/kinguser/bgh;->jf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public delelteItem(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$KingrootAppListMgr;->this$0:Lcom/kingroot/kinguser/service/KingRootAppListService;

    invoke-static {v0}, Lcom/kingroot/kinguser/service/KingRootAppListService;->a(Lcom/kingroot/kinguser/service/KingRootAppListService;)Lcom/kingroot/kinguser/service/KingRootAppListService$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 70
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bbt;->deleteRule(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllAppList()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/service/KingrootAppItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$KingrootAppListMgr;->this$0:Lcom/kingroot/kinguser/service/KingRootAppListService;

    invoke-static {v0}, Lcom/kingroot/kinguser/service/KingRootAppListService;->a(Lcom/kingroot/kinguser/service/KingRootAppListService;)Lcom/kingroot/kinguser/service/KingRootAppListService$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 80
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->getAllAppRuleList()Ljava/util/HashMap;

    move-result-object v0

    .line 82
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 83
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/AppRuleEntity;

    .line 86
    new-instance v5, Lcom/kingroot/kinguser/service/KingrootAppItem;

    invoke-direct {v5}, Lcom/kingroot/kinguser/service/KingrootAppItem;-><init>()V

    .line 87
    iget-object v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/service/KingrootAppItem;->kO(Ljava/lang/String;)V

    .line 88
    iget v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 90
    :goto_2
    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/service/KingrootAppItem;->il(I)V

    .line 91
    iget-object v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/service/KingrootAppItem;->kN(Ljava/lang/String;)V

    .line 92
    iget-wide v6, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    invoke-virtual {v5, v6, v7}, Lcom/kingroot/kinguser/service/KingrootAppItem;->setTime(J)V

    .line 94
    iget-object v0, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 88
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 97
    goto :goto_0
.end method

.method public getAllowAppList()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/service/KingrootAppItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$KingrootAppListMgr;->this$0:Lcom/kingroot/kinguser/service/KingRootAppListService;

    invoke-static {v0}, Lcom/kingroot/kinguser/service/KingRootAppListService;->a(Lcom/kingroot/kinguser/service/KingRootAppListService;)Lcom/kingroot/kinguser/service/KingRootAppListService$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->getAllowAppRuleList()Ljava/util/HashMap;

    move-result-object v0

    .line 110
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 111
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/AppRuleEntity;

    .line 114
    new-instance v5, Lcom/kingroot/kinguser/service/KingrootAppItem;

    invoke-direct {v5}, Lcom/kingroot/kinguser/service/KingrootAppItem;-><init>()V

    .line 115
    iget-object v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/service/KingrootAppItem;->kO(Ljava/lang/String;)V

    .line 116
    iget v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 118
    :goto_2
    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/service/KingrootAppItem;->il(I)V

    .line 119
    iget-object v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/service/KingrootAppItem;->kN(Ljava/lang/String;)V

    .line 120
    iget-wide v6, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    invoke-virtual {v5, v6, v7}, Lcom/kingroot/kinguser/service/KingrootAppItem;->setTime(J)V

    .line 122
    iget-object v0, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 116
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 124
    goto :goto_0
.end method

.method public getDenyAppList()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/service/KingrootAppItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService$KingrootAppListMgr;->this$0:Lcom/kingroot/kinguser/service/KingRootAppListService;

    invoke-static {v0}, Lcom/kingroot/kinguser/service/KingRootAppListService;->a(Lcom/kingroot/kinguser/service/KingRootAppListService;)Lcom/kingroot/kinguser/service/KingRootAppListService$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/service/KingRootAppListService$a;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->getDenyAppRuleList()Ljava/util/HashMap;

    move-result-object v0

    .line 137
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 138
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/AppRuleEntity;

    .line 141
    new-instance v5, Lcom/kingroot/kinguser/service/KingrootAppItem;

    invoke-direct {v5}, Lcom/kingroot/kinguser/service/KingrootAppItem;-><init>()V

    .line 142
    iget-object v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/service/KingrootAppItem;->kO(Ljava/lang/String;)V

    .line 143
    iget v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 145
    :goto_2
    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/service/KingrootAppItem;->il(I)V

    .line 146
    iget-object v1, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/service/KingrootAppItem;->kN(Ljava/lang/String;)V

    .line 147
    iget-wide v6, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    invoke-virtual {v5, v6, v7}, Lcom/kingroot/kinguser/service/KingrootAppItem;->setTime(J)V

    .line 149
    iget-object v0, v0, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 143
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 151
    goto :goto_0
.end method

.method public modifyItem(Ljava/lang/String;ILjava/lang/String;J)I
    .locals 2

    .prologue
    .line 62
    invoke-virtual/range {p0 .. p5}, Lcom/kingroot/kinguser/service/KingRootAppListService$KingrootAppListMgr;->addItem(Ljava/lang/String;ILjava/lang/String;J)I

    move-result v0

    return v0
.end method
