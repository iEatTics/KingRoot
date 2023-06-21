.class abstract Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;
.super Ljava/lang/Object;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/AutoPressButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ViewFinder"
.end annotation


# instance fields
.field mRootView:Landroid/view/View;

.field final synthetic this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->mRootView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method findView()Landroid/view/View;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method findView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 170
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->matchesView(Landroid/view/View;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object p1

    :catch_0
    move-exception v0

    .line 174
    invoke-static {}, Lcom/applisto/appcloner/classes/AutoPressButtons;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 178
    check-cast p1, Landroid/view/ViewGroup;

    .line 179
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 181
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method abstract matchesView(Landroid/view/View;)Z
.end method
