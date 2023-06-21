.class Lcom/kingroot/kinguser/ju$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final tj:Lcom/kingroot/kinguser/ju;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/kingroot/kinguser/ju;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ju;-><init>(Lcom/kingroot/kinguser/jv;)V

    sput-object v0, Lcom/kingroot/kinguser/ju$a;->tj:Lcom/kingroot/kinguser/ju;

    return-void
.end method

.method static synthetic cL()Lcom/kingroot/kinguser/ju;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/kingroot/kinguser/ju$a;->tj:Lcom/kingroot/kinguser/ju;

    return-object v0
.end method
