.class Lcom/applisto/appcloner/classes/DefaultProvider$1;
.super Ljava/lang/Thread;
.source "DefaultProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/DefaultProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/DefaultProvider;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sendBroadcastOnStart:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/DefaultProvider;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1128
    iput-object p1, p0, Lcom/applisto/appcloner/classes/DefaultProvider$1;->this$0:Lcom/applisto/appcloner/classes/DefaultProvider;

    iput-object p3, p0, Lcom/applisto/appcloner/classes/DefaultProvider$1;->val$sendBroadcastOnStart:Ljava/lang/String;

    iput-object p4, p0, Lcom/applisto/appcloner/classes/DefaultProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1133
    invoke-static {}, Lcom/applisto/appcloner/classes/DefaultProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run; ContextClassLoaderThread started"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v0, p0, Lcom/applisto/appcloner/classes/DefaultProvider$1;->val$sendBroadcastOnStart:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/applisto/appcloner/classes/DefaultProvider$1;->this$0:Lcom/applisto/appcloner/classes/DefaultProvider;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/DefaultProvider$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/DefaultProvider$1;->val$sendBroadcastOnStart:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->access$100(Lcom/applisto/appcloner/classes/DefaultProvider;Landroid/content/Context;Ljava/lang/String;)V

    :catch_0
    :cond_0
    :goto_0
    const-wide/32 v0, 0x36ee80

    .line 1141
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
