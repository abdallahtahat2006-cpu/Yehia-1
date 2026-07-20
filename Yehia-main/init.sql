-- Create site_content table
CREATE TABLE site_content (
    id TEXT PRIMARY KEY,
    content TEXT,
    type TEXT
);

-- Insert site_content initial data
INSERT INTO site_content (id, content, type) VALUES
('hero_title', 'دورة الحماية من الابتزاز الإلكتروني وكيفية التعامل معه', 'text'),
('hero_subtitle', 'احمِ نفسك وأسرتك، وافهم كيف تتعامل مع الابتزاز الإلكتروني قانونياً وتقنياً ونفسياً قبل وبعد التهديد.', 'text'),
('hero_video_url', 'promo.mp4', 'text'),
('hero_poster_url', 'poster.jpg', 'text'),
('hero_cta_text', 'اشترك الآن بسعر الإطلاق (700 ج.م)', 'text'),
('hero_cta_hint', 'دورة تعليمية وتوعوية، بادر بحجز مكانك.', 'text'),
('features_header_title', 'لماذا هذه الدورة مختلفة؟', 'text'),
('features_header_subtitle', 'لأن الابتزاز الإلكتروني ليس قانوناً فقط... وليس أمناً سيبرانياً فقط... وليس دعماً نفسياً فقط. الضحية تحتاج 3 أشياء في نفس الوقت:', 'text'),
('trainers_header_title', 'خبراء الدورة', 'text'),
('curriculum_header_title', 'محاور الدورة: ماذا ستتعلم؟', 'text'),
('faq_header_title', 'أسئلة شائعة', 'text'),
('cta_section_title', 'لا تنتظر حتى تقع المشكلة.. احمِ نفسك وأسرتك الآن', 'text'),
('cta_old_price', '4500', 'text'),
('cta_new_price', '700', 'text'),
('cta_subtitle', 'لأول 100 مشترك فقط!', 'text'),
('cta_button_text', 'اشترك الآن بسعر الإطلاق', 'text'),
('cta_note', 'الدورة تعليمية وتوعوية، وكل حالة تختلف حسب الوقائع والأدلة.', 'text'),
('chatbot_api_key', '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', 'text'),
('chatbot_system_prompt', 'أنت مساعد ذكي داخل موقع المحامي يحيى رضوان. مهمتك الإجابة على أسئلة الزوار بناءً على "ملف المعرفة" المرفق أدناه فقط. لا تجب من خارج هذا الملف، واستخدم نبرة مهنية ومحترمة ومصرية مفهومة.', 'text'),
('chatbot_knowledge', '', 'text'),
('chatbot_model', 'openai/gpt-4o-mini', 'text'),
('chatbot_limit_guest', '3', 'text'),
('chatbot_limit_user', '6', 'text'),
('wa_floating_link', 'https://wa.me/201021469038', 'text'),
('wa_consultation_link', 'https://wa.me/201021469038', 'text'),
('wa_activation_link', 'https://wa.me/201021469038', 'text'),
('site_logo', 'logo/aaaa.jpg.jpeg', 'text');

-- Create features table
CREATE TABLE features (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title TEXT,
    description TEXT,
    icon TEXT,
    order_index INT
);

-- Insert features initial data
INSERT INTO features (title, description, icon, order_index) VALUES
('1. تعرف حقك بالقانون', 'للحفاظ على الدليل، وعمل محضر سليم، وفهم الطريق القانوني.', 'fa-scale-balanced', 1),
('2. تحمي نفسك تقنياً', 'لتجنب الاختراق، والروابط المزيفة، وحماية حساباتك وأجهزتك.', 'fa-shield-halved', 2),
('3. تتعامل نفسياً مع الضغط', 'للسيطرة على الخوف، وعدم الخضوع لسيطرة المبتز، والتعافي بعد الأزمة.', 'fa-brain', 3);

-- Create trainers table
CREATE TABLE trainers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT,
    description TEXT,
    image_path TEXT,
    order_index INT
);

-- Insert trainers initial data
INSERT INTO trainers (name, description, image_path, order_index) VALUES
('المحامي يحيى رضوان', 'محامٍ متخصص في جرائم الإنترنت والابتزاز الإلكتروني، ومؤسس مبادرة "معًا ضد جرائم الإنترنت".', 'مدربين/yehia.jpg.jpeg', 1),
('م/ عبدالرازق علي', 'مدير وحدة الأمن السيبراني بخبرة 25 عاماً، ومدرب دولي معتمد في تأمين الشبكات المعلوماتية.', 'مدربين/abdelrazek.jpg.jpeg', 2),
('د/ هالة فؤاد', 'دكتورة صحة نفسية متخصصة في التعامل مع الصدمات، الضغط النفسي، والتعافي بعد الأزمات.', 'مدربين/hala.jpg.jpeg', 3);

-- Create curriculum table
CREATE TABLE curriculum (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title TEXT,
    content TEXT,
    order_index INT
);

-- Insert curriculum initial data
INSERT INTO curriculum (title, content, order_index) VALUES
('الوحدة الأولى: فهم الابتزاز الإلكتروني', 'ما هو؟، لماذا يقع الضحايا؟، كيف يفكر المبتز؟، الفرق بين التهديد والابتزاز.', 1),
('الوحدة الثانية: أول تصرف عند التهديد', 'ماذا تفعل في أول ساعة؟، ماذا لا تفعل؟، لماذا لا تتصرف بخوف؟، كيف تحفظ الأدلة؟', 2),
('الوحدة الثالثة: الأدلة الرقمية', 'ما معنى الدليل الرقمي؟، ما الذي يجب حفظه؟، أخطاء تضعف الدليل.', 3),
('الوحدة الرابعة: الطريق القانوني', 'متى تتوجه للجهات؟، كيفية تحرير المحضر ومتابعته، دور النيابة، التعويض والعقوبة.', 4),
('الوحدة الخامسة: حماية الحسابات والأجهزة', 'حماية الهاتف والبريد ووسائل التواصل، كلمات المرور، المصادقة الثنائية.', 5),
('الوحدة السادسة: فهم طرق الاختراق الحديثة', 'الروابط المزيفة، الصفحات الوهمية، الهندسة الاجتماعية.', 6),
('الوحدة السابعة: التعامل النفسي وقت الابتزاز', 'السيطرة على الخوف، التعامل مع التهديد، تعامل الأهل مع الضحية.', 7),
('الوحدة الثامنة: التعافي بعد الأزمة', 'التعامل مع الصدمة، الرجوع للحياة، بناء الثقة، الدعم النفسي.', 8);

-- Create faqs table
CREATE TABLE faqs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    question TEXT,
    answer TEXT,
    order_index INT
);

-- Insert faqs initial data
INSERT INTO faqs (question, answer, order_index) VALUES
('هل الدورة للمصريين فقط؟', 'الدورة مفيدة للجمهور العربي عموماً في الفهم والحماية، لكن الإجراءات القانونية الدقيقة قد تختلف حسب الدولة.', 1),
('هل تضمن الدورة إيقاف المبتز؟', 'لا، الدورة تعليمية وتساعدك على حماية نفسك والأدلة ومعرفة الطريق، لكن لا تضمن نتيجة قانونية محددة.', 2),
('أشتري الدورة أم أحجز استشارة؟', 'للتعلم والوقاية: الدورة مناسبة. إذا كان لديك حالة فعلية تحتاج قراراً حسب الأدلة، فالاستشارة القانونية أنسب.', 3),
('هل تناسب أولياء الأمور؟', 'نعم جداً، لفهم كيفية حماية الأبناء والتعامل معهم وقت الأزمات بدون عنف أو ترهيب.', 4),
('هل الدورة تعلم الاختراق؟', 'لا، الدورة تعلم الحماية وتوعي بأساليب المخترقين لتجنبها، ولا تقدم أدوات للاختراق.', 5),
('ما هو سعر الدورة؟', 'السعر الأساسي 4500 جنيه، وسعر الإطلاق الحالي 700 جنيه لأول 100 مشترك.', 6);

-- Set permissions for anon access (so the website can read it without authentication)
ALTER TABLE site_content ENABLE ROW LEVEL SECURITY;
ALTER TABLE features ENABLE ROW LEVEL SECURITY;
ALTER TABLE trainers ENABLE ROW LEVEL SECURITY;
ALTER TABLE curriculum ENABLE ROW LEVEL SECURITY;
ALTER TABLE faqs ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read access on site_content" ON site_content FOR SELECT USING (true);
CREATE POLICY "Allow public read access on features" ON features FOR SELECT USING (true);
CREATE POLICY "Allow public read access on trainers" ON trainers FOR SELECT USING (true);
CREATE POLICY "Allow public read access on curriculum" ON curriculum FOR SELECT USING (true);
CREATE POLICY "Allow public read access on faqs" ON faqs FOR SELECT USING (true);

-- Also allow update for the admin dashboard (since we are not using auth for this simple setup)
-- NOTE: In production, you would restrict these UPDATE policies to authenticated users only.
CREATE POLICY "Allow public update access on site_content" ON site_content FOR UPDATE USING (true);
CREATE POLICY "Allow public update access on features" ON features FOR UPDATE USING (true);
CREATE POLICY "Allow public update access on trainers" ON trainers FOR UPDATE USING (true);
CREATE POLICY "Allow public update access on curriculum" ON curriculum FOR UPDATE USING (true);
CREATE POLICY "Allow public update access on faqs" ON faqs FOR UPDATE USING (true);

-- Allow insert access for admin dashboard
CREATE POLICY "Allow public insert access on site_content" ON site_content FOR INSERT WITH CHECK (true);
CREATE POLICY "Allow public insert access on features" ON features FOR INSERT WITH CHECK (true);
CREATE POLICY "Allow public insert access on trainers" ON trainers FOR INSERT WITH CHECK (true);
CREATE POLICY "Allow public insert access on curriculum" ON curriculum FOR INSERT WITH CHECK (true);
CREATE POLICY "Allow public insert access on faqs" ON faqs FOR INSERT WITH CHECK (true);

-- Allow delete access for admin dashboard
CREATE POLICY "Allow public delete access on site_content" ON site_content FOR DELETE USING (true);
CREATE POLICY "Allow public delete access on features" ON features FOR DELETE USING (true);
CREATE POLICY "Allow public delete access on trainers" ON trainers FOR DELETE USING (true);
CREATE POLICY "Allow public delete access on curriculum" ON curriculum FOR DELETE USING (true);
CREATE POLICY "Allow public delete access on faqs" ON faqs FOR DELETE USING (true);

-- Create chat_logs table for chatbot history
CREATE TABLE IF NOT EXISTS chat_logs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES auth.users(id),
    is_guest BOOLEAN DEFAULT false,
    role TEXT,
    content TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now())
);

-- Enable RLS for chat_logs
ALTER TABLE chat_logs ENABLE ROW LEVEL SECURITY;

-- Allow public insert to chat_logs (so both guests and users can log messages)
CREATE POLICY "Allow public insert on chat_logs" ON chat_logs FOR INSERT WITH CHECK (true);
-- Allow public select on chat_logs (for admin dashboard, or users if needed)
CREATE POLICY "Allow public select on chat_logs" ON chat_logs FOR SELECT USING (true);
-- Create subscriptions table
CREATE TABLE IF NOT EXISTS subscriptions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    full_name TEXT,
    phone TEXT,
    payment_method TEXT,
    transfer_number TEXT,
    receipt_url TEXT,
    status TEXT DEFAULT 'pending',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now())
);

-- Enable RLS for subscriptions
ALTER TABLE subscriptions ENABLE ROW LEVEL SECURITY;

-- Allow public insert to subscriptions
CREATE POLICY "Allow public insert on subscriptions" ON subscriptions FOR INSERT WITH CHECK (true);
-- Allow public select/update on subscriptions (for admin dashboard)
CREATE POLICY "Allow public select on subscriptions" ON subscriptions FOR SELECT USING (true);
CREATE POLICY "Allow public update on subscriptions" ON subscriptions FOR UPDATE USING (true);

-- Create payment_methods table
CREATE TABLE IF NOT EXISTS payment_methods (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT,
    number TEXT,
    order_index INT
);

-- Insert payment_methods initial data
INSERT INTO payment_methods (name, number, order_index) VALUES
('إنستا باي (InstaPay)', '01000000000', 1),
('فودافون كاش', '01000000000', 2);

-- Enable RLS for payment_methods
ALTER TABLE payment_methods ENABLE ROW LEVEL SECURITY;

-- Allow public read/update/insert/delete for payment_methods
CREATE POLICY "Allow public select on payment_methods" ON payment_methods FOR SELECT USING (true);
CREATE POLICY "Allow public update on payment_methods" ON payment_methods FOR UPDATE USING (true);
CREATE POLICY "Allow public insert on payment_methods" ON payment_methods FOR INSERT WITH CHECK (true);
CREATE POLICY "Allow public delete on payment_methods" ON payment_methods FOR DELETE USING (true);
