.class public Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;
.super Landroid/app/Activity;
.source "DefaultProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/DefaultProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyActivity"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1686
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 1688
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic lambda$null$0()V
    .locals 6

    .line 1706
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "amF2YS5sYW5nLlN5c3RlbQ=="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v3, "ZXhpdA=="

    .line 1707
    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1709
    invoke-static {}, Lcom/applisto/appcloner/classes/DefaultProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$1$DefaultProvider$MyActivity(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1702
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;->finish()V

    .line 1703
    iget-object p1, p0, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/applisto/appcloner/classes/-$$Lambda$DefaultProvider$MyActivity$o8AmorTtfFAepu-ohuVYaxJaqGg;->INSTANCE:Lcom/applisto/appcloner/classes/-$$Lambda$DefaultProvider$MyActivity$o8AmorTtfFAepu-ohuVYaxJaqGg;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1693
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1696
    :try_start_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1697
    invoke-static {p0}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "This app was cloned using a non-official version of App Cloner.\n\nTo continue using this app reclone it using the official install of App Cloner."

    .line 1698
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 1700
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$DefaultProvider$MyActivity$MwGeVjmJepdN5HB9Bevk17fMjUg;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$DefaultProvider$MyActivity$MwGeVjmJepdN5HB9Bevk17fMjUg;-><init>(Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;)V

    .line 1701
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1713
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1715
    invoke-static {}, Lcom/applisto/appcloner/classes/DefaultProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 1716
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method
