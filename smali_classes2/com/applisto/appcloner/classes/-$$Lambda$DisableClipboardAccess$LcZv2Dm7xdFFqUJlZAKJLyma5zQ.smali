.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ;

    invoke-direct {v0}, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ;->INSTANCE:Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->lambda$startClipboardTimeout$3()V

    return-void
.end method
