.class Lcom/applisto/appcloner/classes/OpenLinksWith$1;
.super Lcom/applisto/appcloner/classes/util/IActivityManagerHook;
.source "OpenLinksWith.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/OpenLinksWith;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/OpenLinksWith;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/OpenLinksWith;Landroid/content/Context;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->this$0:Lcom/applisto/appcloner/classes/OpenLinksWith;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/IActivityManagerHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$OpenLinksWith$1$UZLHkMOhnriWVCcX1vT4MlhebxI;

    invoke-direct {v1, p0, v0, p1}, Lcom/applisto/appcloner/classes/-$$Lambda$OpenLinksWith$1$UZLHkMOhnriWVCcX1vT4MlhebxI;-><init>(Lcom/applisto/appcloner/classes/OpenLinksWith$1;Landroid/content/Context;Ljava/lang/Object;)V

    return-object v1
.end method

.method public synthetic lambda$getInvocationHandler$0$OpenLinksWith$1(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    const-string p3, "startActivity"

    .line 47
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    .line 48
    aget-object p3, p5, p3

    check-cast p3, Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v0, "android.intent.action.VIEW"

    .line 50
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->this$0:Lcom/applisto/appcloner/classes/OpenLinksWith;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/OpenLinksWith;->access$000(Lcom/applisto/appcloner/classes/OpenLinksWith;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/OpenLinksWith;->access$100(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->this$0:Lcom/applisto/appcloner/classes/OpenLinksWith;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/OpenLinksWith;->access$000(Lcom/applisto/appcloner/classes/OpenLinksWith;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-static {}, Lcom/applisto/appcloner/classes/OpenLinksWith;->access$200()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p4, p2, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
