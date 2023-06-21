.class Lcom/kingroot/loader/host/KlContentProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/host/KlContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public byS:Landroid/content/ContentProvider;

.field public byT:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/kingroot/loader/host/KlContentProvider$a;->byS:Landroid/content/ContentProvider;

    .line 92
    iput-object v0, p0, Lcom/kingroot/loader/host/KlContentProvider$a;->byT:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/loader/host/KlContentProvider$1;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/kingroot/loader/host/KlContentProvider$a;-><init>()V

    return-void
.end method
