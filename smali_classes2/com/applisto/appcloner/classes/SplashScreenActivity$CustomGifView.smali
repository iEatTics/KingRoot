.class public Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;
.super Landroid/view/View;
.source "SplashScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/SplashScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomGifView"
.end annotation


# instance fields
.field private mGifMovie:Landroid/graphics/Movie;

.field private mMovieHeight:F

.field private mMovieStart:J

.field private mMovieWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-static {p2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mGifMovie:Landroid/graphics/Movie;

    .line 132
    iget-object p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mGifMovie:Landroid/graphics/Movie;

    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mMovieWidth:F

    .line 133
    iget-object p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mGifMovie:Landroid/graphics/Movie;

    invoke-virtual {p1}, Landroid/graphics/Movie;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mMovieHeight:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 140
    iget-wide v2, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mMovieStart:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 141
    iput-wide v0, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mMovieStart:J

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mGifMovie:Landroid/graphics/Movie;

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e8

    .line 151
    :cond_1
    iget-wide v3, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mMovieStart:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    .line 152
    iget-object v0, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mGifMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 154
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 155
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 157
    iget v2, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mMovieWidth:F

    div-float v2, v0, v2

    .line 158
    iget v3, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mMovieHeight:F

    div-float v3, v1, v3

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 161
    iget v3, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mMovieWidth:F

    mul-float v3, v3, v2

    .line 162
    iget v4, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mMovieHeight:F

    mul-float v4, v4, v2

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 167
    iget-object v0, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->mGifMovie:Landroid/graphics/Movie;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 170
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;->invalidate()V

    :cond_2
    return-void
.end method
