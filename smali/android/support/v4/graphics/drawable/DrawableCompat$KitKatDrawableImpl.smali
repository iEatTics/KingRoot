.class Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 204
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 194
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .prologue
    .line 189
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 190
    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 199
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
