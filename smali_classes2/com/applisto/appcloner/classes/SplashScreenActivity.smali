.class public Lcom/applisto/appcloner/classes/SplashScreenActivity;
.super Landroid/app/Activity;
.source "SplashScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOriginalActivityName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/applisto/appcloner/classes/SplashScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isGif([B)Z
    .locals 4

    const/4 v0, 0x0

    .line 117
    aget-byte v1, p0, v0

    const/4 v2, 0x1

    const/16 v3, 0x47

    if-ne v1, v3, :cond_0

    aget-byte v1, p0, v2

    const/16 v3, 0x49

    if-ne v1, v3, :cond_0

    const/4 v1, 0x2

    aget-byte p0, p0, v1

    const/16 v1, 0x46

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static synthetic lambda$yXLk1id2mEUWEr-fgdpI8_Zunbs(Lcom/applisto/appcloner/classes/SplashScreenActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->startApp()V

    return-void
.end method

.method private startApp()V
    .locals 3

    .line 102
    sget-object v0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "startApp; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 106
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    sget-object v1, Lcom/applisto/appcloner/classes/SplashScreenActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    :try_start_0
    invoke-static {p0}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object p1

    const-string v0, "splashScreenDuration"

    const/4 v1, 0x3

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "splashScreenMargin"

    const v2, 0x3e99999a    # 0.3f

    .line 52
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    .line 53
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lcom/applisto/appcloner/classes/Utils;->getRealScreenSize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    .line 54
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 55
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 58
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, ".splashScreenFile"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/applisto/appcloner/classes/Utils;->readFully(Ljava/io/InputStream;Z)[B

    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->isGif([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    new-instance v3, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, p0, v4}, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    .line 62
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 67
    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v1, v3

    .line 72
    :goto_0
    invoke-virtual {v1, v2, p1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->setContentView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 75
    :try_start_2
    sget-object v1, Lcom/applisto/appcloner/classes/SplashScreenActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :goto_1
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 80
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string v1, "com.applisto.appcloner.originalActivityName"

    .line 83
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 85
    iget-object p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 89
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$SplashScreenActivity$yXLk1id2mEUWEr-fgdpI8_Zunbs;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$SplashScreenActivity$yXLk1id2mEUWEr-fgdpI8_Zunbs;-><init>(Lcom/applisto/appcloner/classes/SplashScreenActivity;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 93
    sget-object v0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method
