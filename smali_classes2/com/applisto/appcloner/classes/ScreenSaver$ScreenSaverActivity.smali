.class public Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;
.super Landroid/app/Activity;
.source "ScreenSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/ScreenSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenSaverActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 227
    new-instance p1, Lcom/applisto/appcloner/classes/-$$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk;

    invoke-direct {p1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk;-><init>(Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;)V

    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 220
    new-instance p1, Lcom/applisto/appcloner/classes/-$$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk;

    invoke-direct {p1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk;-><init>(Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;)V

    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public finish()V
    .locals 3

    .line 233
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "unMute"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->access$200()V

    .line 240
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 242
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->access$000()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;->setContentView(Landroid/view/View;)V

    .line 192
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v0, 0x200

    .line 204
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/high16 v0, -0x80000000

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 209
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 210
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 211
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method
