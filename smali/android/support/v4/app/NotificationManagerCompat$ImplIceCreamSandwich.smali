.class Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;
.super Landroid/support/v4/app/NotificationManagerCompat$ImplEclair;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImplIceCreamSandwich"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$ImplEclair;-><init>()V

    return-void
.end method


# virtual methods
.method public getSideChannelBindFlags()I
    .locals 1

    .prologue
    .line 217
    const/16 v0, 0x21

    return v0
.end method
