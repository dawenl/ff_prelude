Clarinet clair => dac;
Rhodey voc => dac;

[49, 51, 53, 56, 61, 63, 65, 68, 73, 75, 77, 80, 85, 87, 89, 92, 97, 92, 89, 87, 85, 80, 77, 75, 73, 68, 65, 63, 61, 56, 53, 51,// phase 1, C Major
 46, 48, 49, 53, 58, 60, 61, 65, 70, 72, 73, 77, 82, 84, 85, 89, 94, 89, 85, 84, 82, 77, 73, 72, 70, 65, 61, 60, 58, 53, 49, 48,// phase 2, a minor
 49, 51, 53, 56, 61, 63, 65, 68, 73, 75, 77, 80, 85, 87, 89, 92, 97, 92, 89, 87, 85, 80, 77, 75, 73, 68, 65, 63, 61, 56, 53, 51,// phase 1, C Major
 46, 48, 49, 53, 58, 60, 61, 65, 70, 72, 73, 77, 82, 84, 85, 89, 94, 89, 85, 84, 82, 77, 73, 72, 70, 65, 61, 60, 58, 53, 49, 48,// phase 2, a minor
 46, 49, 54, 56, 58, 61, 66, 68, 70, 73, 78, 80, 82, 85, 90, 92, 94, 92, 90, 85, 82, 80, 78, 73, 70, 68, 66, 61, 58, 56, 54, 49,// phase 3, F Major  
 48, 51, 56, 58, 60, 63, 68, 70, 72, 75, 80, 82, 84, 87, 92, 94, 96, 94, 92, 87, 84, 82, 80, 75, 72, 70, 68, 63, 60, 58, 56, 51,// phase 4, G Major
 46, 50, 53, 57, 58, 62, 65, 69, 70, 74, 77, 81, 82, 86, 89, 93, 94, 93, 89, 86, 82, 81, 77, 74, 70, 69, 65, 62, 58, 57, 53, 50,// phase 5, Amaj7
 48, 52, 55, 59, 60, 64, 67, 71, 72, 76, 79, 83, 84, 88, 91, 95, 96, 95, 91, 88, 84, 83, 79, 76, 72, 71, 67, 64, 60, 59, 55, 52 // phase 6, Bmaj7
] @=> int notes[];
[49, 51, 53, 56, 61, 63, 65, 68, 73, 75, 77, 80, 85, 87, 89, 92, 97, 92, 89, 87, 85, 80, 77, 75, 73, 68, 65, 63, 61, 56, 53, 51,// phase 1, C Major
 46, 48, 49, 53, 58, 60, 61, 65, 70, 72, 73, 77, 82, 84, 85, 89, 94, 89, 85, 84, 82, 77, 73, 72, 70, 65, 61, 60, 58, 53, 49, 48,// phase 2, a minor
 49, 51, 53, 56, 61, 63, 65, 68, 73, 75, 77, 80, 85, 87, 89, 92, 97, 92, 89, 87, 85, 80, 77, 75, 73, 68, 65, 63, 61, 56, 53, 51,// phase 1, C Major
 46, 48, 49, 53, 58, 60, 61, 65, 70, 72, 73, 77, 82, 84, 85, 89, 94, 89, 85, 84, 82, 77, 73, 72, 70, 65, 61, 60, 58, 53, 49, 48,// phase 2, a minor
 46, 49, 54, 56, 58, 61, 66, 68, 70, 73, 78, 80, 82, 85, 90, 92, 94, 92, 90, 85, 82, 80, 78, 73, 70, 68, 66, 61, 58, 56, 54, 49,// phase 3, F Major  
 48, 51, 56, 58, 60, 63, 68, 70, 72, 75, 80, 82, 84, 87, 92, 94, 96, 94, 92, 87, 84, 82, 80, 75, 72, 70, 68, 63, 60, 58, 56, 51,// phase 4, G Major
 46, 50, 53, 57, 58, 62, 65, 69, 70, 74, 77, 81, 82, 86, 89, 93, 94, 93, 89, 86, 82, 81, 77, 74, 70, 69, 65, 62, 58, 57, 53, 50,// phase 5, Amaj7
 48, 52, 55, 59, 60, 64, 67, 71, 72, 76, 79, 83, 84, 88, 91, 95, 96, 95, 91, 88, 84, 83, 79, 76, 72, 71, 67, 64, 60, 59, 55, 52 // phase 6, Bmaj7
] @=> int notes2[];

for( int i; i < notes.cap(); i++ )
{
    Std.mtof( 12 + notes[i] ) => clair.freq;
    1.0 => clair.noteOn;
    Std.mtof( notes2[i] ) => voc.freq;
    1.0 => voc.noteOn;
    200::ms => now;
}