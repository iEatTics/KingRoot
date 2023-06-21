.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$OpenLinksWith$1$UZLHkMOhnriWVCcX1vT4MlhebxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/OpenLinksWith$1;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/OpenLinksWith$1;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$OpenLinksWith$1$UZLHkMOhnriWVCcX1vT4MlhebxI;->f$0:Lcom/applisto/appcloner/classes/OpenLinksWith$1;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$OpenLinksWith$1$UZLHkMOhnriWVCcX1vT4MlhebxI;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/applisto/appcloner/classes/-$$Lambda$OpenLinksWith$1$UZLHkMOhnriWVCcX1vT4MlhebxI;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$OpenLinksWith$1$UZLHkMOhnriWVCcX1vT4MlhebxI;->f$0:Lcom/applisto/appcloner/classes/OpenLinksWith$1;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$OpenLinksWith$1$UZLHkMOhnriWVCcX1vT4MlhebxI;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$OpenLinksWith$1$UZLHkMOhnriWVCcX1vT4MlhebxI;->f$2:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->lambda$getInvocationHandler$0$OpenLinksWith$1(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
