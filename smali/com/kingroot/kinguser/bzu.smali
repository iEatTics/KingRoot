.class public Lcom/kingroot/kinguser/bzu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bVV:Lcom/kingroot/kinguser/bzv;

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cp(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/kingroot/kinguser/ccb;->w(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bzu;->sContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/kingroot/kinguser/bzw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bzw;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bzu;->bVV:Lcom/kingroot/kinguser/bzv;

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public static g(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/kingroot/kinguser/bzu;->bVV:Lcom/kingroot/kinguser/bzv;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bzv;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static ge()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/kingroot/kinguser/bzu;->sContext:Landroid/content/Context;

    return-object v0
.end method
