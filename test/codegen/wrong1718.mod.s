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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 71 of <array 40 of <array 26 of <array 18 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   1:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_3_while_cond:
    call    dummyBOOLfunc           #   3:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t11 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_while_body:
    movl    $99, %eax               #   7:     if     99 > 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   8:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #  10:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_3_while_cond       #  13:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t13      <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 53 of <array 58 of <array 57 of <array 25 of <array 6 of <int>>>>>>> %ebp+8 ]
    #    -33(%ebp)   1  [ $v2       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $71568, %eax            #   1:     if     71568 # t10 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f1_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v2 <- t11
    movb    %al, -33(%ebp)         
    jmp     l_f1_7                  #  10:     goto   7
    jmp     l_f1_7                  #  11:     goto   7
    call    dummyBOOLfunc           #  12:     call   t12 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  13:     if     t12 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_7                  #  14:     goto   7
l_f1_6:
    movl    $1, %eax                #  16:     assign t13 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f1_8                  #  17:     goto   8
l_f1_7:
    movl    $0, %eax                #  19:     assign t13 <- 0
    movb    %al, -19(%ebp)         
l_f1_8:
    movzbl  -19(%ebp), %eax         #  21:     return t13
    jmp     l_f1_exit              
    movl    $51867, %eax            #  22:     sub    t14 <- 51867, 15268
    movl    $15268, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     sub    t15 <- t14, 27305
    movl    $27305, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     sub    t16 <- t15, 9899
    movl    $9899, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     assign v3 <- t16
    movl    %eax, -40(%ebp)        

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 53 of <array 58 of <array 57 of <array 25 of <array 6 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -18(%ebp)   1  [ $v3       <bool> %ebp-18 ]
    #   -105130844(%ebp)  105130824  [ $v4       <array 53 of <array 58 of <array 57 of <array 25 of <array 6 of <int>>>>>> %ebp-105130844 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $105130832, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $26282708, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-105130844(%ebp)     # local array 'v4': 5 dimensions
    movl    $53,-105130840(%ebp)    #   dimension 1: 53 elements
    movl    $58,-105130836(%ebp)    #   dimension 2: 58 elements
    movl    $57,-105130832(%ebp)    #   dimension 3: 57 elements
    movl    $25,-105130828(%ebp)    #   dimension 4: 25 elements
    movl    $6,-105130824(%ebp)     #   dimension 5: 6 elements

    # function body
    movl    $1, %eax                #   0:     assign v3 <- 1
    movb    %al, -18(%ebp)         
    movl    $18730, %eax            #   1:     assign v2 <- 18730
    movl    %eax, 12(%ebp)         
l_f2_3_while_cond:
    leal    -105130844(%ebp), %eax  #   3:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #   5:     call   t11 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   6:     if     t11 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_2                  #   7:     goto   2
l_f2_6:
    jmp     l_f2_3_while_cond       #   9:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $105130832, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t9       <char> %ebp-34 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $83145, %eax            #   0:     if     83145 = 47815 goto 1_if_true
    movl    $47815, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $19294, %eax            #   4:     if     19294 > 54004 goto 6_while_body
    movl    $54004, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #  14:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $74330, %eax            #  15:     if     74330 > 49680 goto 13_if_true
    movl    $49680, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_13_if_true      
    jmp     l_test_14_if_false      #  16:     goto   14_if_false
l_test_13_if_true:
    call    dummyBOOLfunc           #  18:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #  19:     assign v0 <- 0
    movb    %al, v0                
    call    dummyCHARfunc           #  20:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_12               #  21:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $98, %eax               #  24:     if     98 < 99 goto 20
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_20              
    jmp     l_test_21               #  25:     goto   21
l_test_20:
    movl    $1, %eax                #  27:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_22               #  28:     goto   22
l_test_21:
    movl    $0, %eax                #  30:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_22:
    movzbl  -16(%ebp), %eax         #  32:     assign v0 <- t3
    movb    %al, v0                
    movl    $89444, %eax            #  33:     div    t4 <- 89444, 36881
    movl    $36881, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  34:     div    t5 <- t4, 58382
    movl    $58382, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  35:     mul    t6 <- t5, 70633
    movl    $70633, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $4349, %eax             #  36:     add    t7 <- 4349, t6
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     assign v1 <- t7
    movl    %eax, v1               
    movl    $80375, %eax            #  38:     param  1 <- 80375
    pushl   %eax                   
    call    dummyCHARfunc           #  39:     call   t8 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  40:     param  0 <- t8
    pushl   %eax                   
    call    f2                      #  41:     call   t9 <- f2
    addl    $8, %esp               
    movb    %al, -34(%ebp)         

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
