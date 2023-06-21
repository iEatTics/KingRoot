.class public Lcom/applisto/appcloner/classes/AutoPressButtons;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;,
        Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;,
        Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoPressButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .locals 6

    .line 40
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    const-string v0, "autoPressButtons"

    .line 42
    invoke-virtual {p1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->forObjectArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 43
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoPressButtons; autoPressButtons: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applisto/appcloner/classes/CloneSettings;

    const/4 v1, 0x0

    const-string v2, "buttonLabel"

    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenText"

    .line 50
    invoke-virtual {v0, v3, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 52
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/4 v4, 0x0

    .line 54
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "pressOnceOnly"

    invoke-virtual {v0, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 55
    iget-object v4, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    new-instance v5, Landroid/util/Pair;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    :cond_2
    invoke-direct {v5, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_3
    sget-object p1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoPressButtons; mAutoPressButtons: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/applisto/appcloner/classes/AutoPressButtons;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    return-object p0
.end method

.method private declared-synchronized checkForButtons()V
    .locals 4

    monitor-enter p0

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mReady:Z

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v1, "checkForButtons; not ready"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getViewRoots()Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewParent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 136
    new-instance v2, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;

    invoke-direct {v2, p0, v1}, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V

    .line 137
    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->findView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    sget-object v1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v2, "checkForButtons; button clicked"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_2
    sget-object v1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v2, "checkForButtons; button not clicked"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 147
    :try_start_3
    sget-object v2, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 151
    :try_start_4
    sget-object v1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method protected getActivityTimerDelayMillis()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public install()V
    .locals 2

    .line 64
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/AutoPressButtons;->onCreate()Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$0$AutoPressButtons(Z)V
    .locals 1

    .line 81
    sget-object p1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v0, "onWindowFocusChanged; "

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/AutoPressButtons;->checkForButtons()V

    return-void
.end method

.method public synthetic lambda$onActivityCreated$1$AutoPressButtons(Landroid/app/Activity;)V
    .locals 3

    const v0, 0x1020002

    .line 77
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 78
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run; rootView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$lIlimpYQIWc-cpThJE2A5QfdhKs;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$lIlimpYQIWc-cpThJE2A5QfdhKs;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mReady:Z

    .line 85
    sget-object p1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v0, "run; now ready"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .locals 4

    .line 73
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$r_ZT5KMnSm9Q1F6792uqyQ700Yc;

    invoke-direct {v1, p0, p1}, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$r_ZT5KMnSm9Q1F6792uqyQ700Yc;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/app/Activity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onActivityTimer(Landroid/app/Activity;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/AutoPressButtons;->checkForButtons()V

    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .locals 2

    .line 103
    sget-object p1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v0, "onAppExit; "

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 106
    :try_start_0
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mReady:Z

    .line 107
    iget-object p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 108
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 109
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
