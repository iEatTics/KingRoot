.class Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;
.super Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/AutoPressButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonViewFinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method matchesView(Landroid/view/View;)Z
    .locals 5

    .line 204
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 205
    check-cast p1, Landroid/widget/TextView;

    .line 206
    invoke-virtual {p1}, Landroid/widget/TextView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 209
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/AutoPressButtons;->access$100(Lcom/applisto/appcloner/classes/AutoPressButtons;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 211
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    iget-object p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/AutoPressButtons;->access$100(Lcom/applisto/appcloner/classes/AutoPressButtons;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 213
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 214
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_1

    .line 215
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;

    iget-object v3, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    iget-object v4, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->mRootView:Landroid/view/View;

    invoke-direct {v2, v3, v4, v0}, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;->findView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 219
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method
