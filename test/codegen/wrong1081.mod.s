##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t9       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 43 of <array 25 of <array 86 of <array 88 of <array 65 of <int>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $100, %eax              #   0:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   1:     goto   0
l_f0_0:
    movl    $98, %eax               #   3:     assign v2 <- 98
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   4:     call   t9 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     return t9
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 33 of <array 76 of <array 2 of <array 99 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     return t9
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    WriteLn                 #   3:     call   WriteLn

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 43 of <array 25 of <array 86 of <array 88 of <array 65 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $v1       <bool> %ebp-41 ]
    #   -2115256068(%ebp)  2115256024  [ $v2       <array 43 of <array 25 of <array 86 of <array 88 of <array 65 of <int>>>>>> %ebp-2115256068 ]
    #   -2115256072(%ebp)   4  [ $v3       <int> %ebp-2115256072 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2115256060, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $528814015, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2115256068(%ebp)    # local array 'v2': 5 dimensions
    movl    $43,-2115256064(%ebp)   #   dimension 1: 43 elements
    movl    $25,-2115256060(%ebp)   #   dimension 2: 25 elements
    movl    $86,-2115256056(%ebp)   #   dimension 3: 86 elements
    movl    $88,-2115256052(%ebp)   #   dimension 4: 88 elements
    movl    $65,-2115256048(%ebp)   #   dimension 5: 65 elements

    # function body
    call    ReadInt                 #   0:     call   t9 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    $99871, %eax            #   1:     if     99871 < t9 goto 1
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t10
    movb    %al, -41(%ebp)         
    leal    -2115256068(%ebp), %eax #  10:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  12:     call   t12 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  13:     return t12
    jmp     l_f2_exit              
    movl    $64592, %eax            #  14:     mul    t13 <- 64592, 58369
    movl    $58369, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #  15:     call   t14 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     assign v3 <- t15
    movl    %eax, -2115256072(%ebp)

l_f2_exit:
    # epilogue
    addl    $2115256060, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <char> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $89184, %eax            #   0:     add    t0 <- 89184, 81594
    movl    $81594, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 23113
    movl    $23113, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 81546
    movl    $81546, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 17563
    movl    $17563, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 2990
    movl    $2990, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     add    t5 <- t4, 46157
    movl    $46157, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     assign v0 <- t5
    movl    %eax, v0               
l_test_2_while_cond:
    jmp     l_test_1                #   8:     goto   1
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
l_test_7_while_cond:
    call    f2                      #  12:     call   t6 <- f2
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  13:     if     t6 < 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_8_while_body    
    jmp     l_test_6                #  14:     goto   6
l_test_8_while_body:
    jmp     l_test_exit            
l_test_12_while_cond:
    movl    $97, %eax               #  18:     if     97 < 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_13_while_body   
    jmp     l_test_11               #  19:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  21:     goto   12_while_cond
l_test_11:
    jmp     l_test_exit            
    jmp     l_test_7_while_cond     #  24:     goto   7_while_cond
l_test_6:
l_test_17_while_cond:
    movl    $55207, %eax            #  27:     if     55207 <= 64425 goto 18_while_body
    movl    $64425, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_18_while_body   
    jmp     l_test_16               #  28:     goto   16
l_test_18_while_body:
    jmp     l_test_20               #  30:     goto   20
l_test_20:
    call    ReadInt                 #  32:     call   t7 <- ReadInt
    movl    %eax, -44(%ebp)        
    jmp     l_test_17_while_cond    #  33:     goto   17_while_cond
l_test_16:
    movl    $14841, %eax            #  35:     if     14841 # 75440 goto 25_if_true
    movl    $75440, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_25_if_true      
    jmp     l_test_26_if_false      #  36:     goto   26_if_false
l_test_25_if_true:
    call    f2                      #  38:     call   t8 <- f2
    movb    %al, -45(%ebp)         
    jmp     l_test_24               #  39:     goto   24
l_test_26_if_false:
l_test_24:

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
