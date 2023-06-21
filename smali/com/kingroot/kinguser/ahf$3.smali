.class Lcom/kingroot/kinguser/ahf$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bjb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ahf;->wR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ahf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahf;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/kingroot/kinguser/ahf$3;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;II)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public b(ILjava/lang/Object;II)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 143
    check-cast p2, Ljava/util/ArrayList;

    .line 145
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 150
    iget-object v2, p0, Lcom/kingroot/kinguser/ahf$3;->this$0:Lcom/kingroot/kinguser/ahf;

    iget-object v2, v2, Lcom/kingroot/kinguser/ahf;->apg:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf$3;->this$0:Lcom/kingroot/kinguser/ahf;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahf;->apg:Ljava/util/Map;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf$3;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/ahf;->a(Lcom/kingroot/kinguser/ahf;I)V

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf$3;->this$0:Lcom/kingroot/kinguser/ahf;

    iget-object v0, v0, Lcom/kingroot/kinguser/ahf;->apg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 160
    new-instance v2, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    invoke-direct {v2}, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;-><init>()V

    .line 161
    iput v4, v2, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    .line 162
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    .line 163
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adB()I

    move-result v0

    iput v0, v2, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apv:I

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf$3;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ahf;->c(Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V

    goto :goto_2

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ahf$3;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahf;->e(Lcom/kingroot/kinguser/ahf;)V

    goto :goto_0
.end method
