.class Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1$1;
.super Ljava/lang/Object;
.source "BackKeyHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;

.field final synthetic val$originalActivityManager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;Ljava/lang/Object;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1$1;->this$1:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1$1;->val$originalActivityManager:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "finishActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "moveActivityTaskToBack"

    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 51
    :cond_0
    invoke-static {}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "invoke; finishActivity/moveActivityTaskToBack; "

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 53
    aget-object v1, p3, p1

    .line 54
    invoke-static {}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke; token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mActivityTokens: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1$1;->this$1:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;

    iget-object v4, v4, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;

    invoke-static {v4}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->access$100(Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v2, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1$1;->this$1:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;

    iget-object v2, v2, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;

    invoke-static {v2}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->access$100(Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1$1;->this$1:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;

    iget-object v2, v2, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;

    invoke-static {v2}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->access$100(Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    .line 59
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 60
    invoke-static {v0}, Lcom/applisto/appcloner/classes/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onBackPressed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "invoke; no onBackPressed"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1$1;->this$1:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;

    iget-object v0, v0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1$1;->this$1:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;

    iget-object v2, v2, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;

    invoke-static {v2}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->access$200(Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->handleBackPressed(Landroid/app/Activity;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1$1;->this$1:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;->access$300(Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;Ljava/lang/Object;)V

    .line 74
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler$1$1;->val$originalActivityManager:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
