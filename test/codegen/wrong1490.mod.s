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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     param  0 <- t7
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
l_f0_3_while_cond:
    jmp     l_f0_4_while_body       #   5:     goto   4_while_body
    jmp     l_f0_4_while_body       #   6:     goto   4_while_body
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 41 of <array 76 of <array 51 of <array 51 of <int>>>>>>> %ebp+8 ]
    #    -18(%ebp)   1  [ $v2       <char> %ebp-18 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   1:     return 97
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     assign v2 <- t7
    movb    %al, -18(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 96 of <array 41 of <array 76 of <array 51 of <array 51 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #   1182756300(%ebp)  -1182756328  [ $v3       <array 96 of <array 41 of <array 76 of <array 51 of <array 51 of <int>>>>>> %ebp+1182756300 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1182756312, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-295689078, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,1182756300(%ebp)     # local array 'v3': 5 dimensions
    movl    $96,1182756304(%ebp)    #   dimension 1: 96 elements
    movl    $41,1182756308(%ebp)    #   dimension 2: 41 elements
    movl    $76,1182756312(%ebp)    #   dimension 3: 76 elements
    movl    $51,1182756316(%ebp)    #   dimension 4: 51 elements
    movl    $51,1182756320(%ebp)    #   dimension 5: 51 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
l_f2_4_while_cond:
    jmp     l_f2_4_while_cond       #   3:     goto   4_while_cond
    call    dummyBOOLfunc           #   4:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #   6:     goto   8_while_cond
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    leal    1182756300(%ebp), %eax  #   9:     &()    t7 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  11:     call   t8 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  12:     assign v1 <- t8
    movb    %al, 8(%ebp)           
    call    dummyBOOLfunc           #  13:     call   t9 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         

l_f2_exit:
    # epilogue
    addl    $-1182756312, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $99, %eax               #   3:     if     99 < 100 goto 8
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_8               
    jmp     l_test_9                #   4:     goto   9
l_test_8:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #   7:     goto   10
l_test_9:
    movl    $0, %eax                #   9:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #  12:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_test_14_while_cond:
    movl    $0, %eax                #  14:     if     0 # 0 goto 15_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_15_while_body   
    jmp     l_test_13               #  15:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  17:     goto   14_while_cond
l_test_13:
    movl    $24932, %eax            #  19:     if     24932 < 14434 goto 18
    movl    $14434, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_18              
    jmp     l_test_19               #  20:     goto   19
l_test_18:
    movl    $1, %eax                #  22:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_20               #  23:     goto   20
l_test_19:
    movl    $0, %eax                #  25:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_20:
    movzbl  -15(%ebp), %eax         #  27:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_0                #  28:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyINTfunc            #  31:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_24_while_cond:
    jmp     l_test_27               #  33:     goto   27
    jmp     l_test_28               #  34:     goto   28
l_test_27:
    movl    $1, %eax                #  36:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_29               #  37:     goto   29
l_test_28:
    movl    $0, %eax                #  39:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_test_29:
    movzbl  -21(%ebp), %eax         #  41:     if     t4 = 1 goto 25_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_25_while_body   
    jmp     l_test_23               #  42:     goto   23
l_test_25_while_body:
l_test_33_while_cond:
    jmp     l_test_33_while_cond    #  45:     goto   33_while_cond
l_test_36_while_cond:
    movl    $0, %eax                #  47:     if     0 = 0 goto 37_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_37_while_body   
    jmp     l_test_35               #  48:     goto   35
l_test_37_while_body:
    jmp     l_test_36_while_cond    #  50:     goto   36_while_cond
l_test_35:
    movl    $3000, %eax             #  52:     if     3000 > 5439 goto 40_if_true
    movl    $5439, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_40_if_true      
    jmp     l_test_41_if_false      #  53:     goto   41_if_false
l_test_40_if_true:
    jmp     l_test_39               #  55:     goto   39
l_test_41_if_false:
l_test_39:
    jmp     l_test_24_while_cond    #  58:     goto   24_while_cond
l_test_23:
l_test_44_while_cond:
    movl    $78857, %eax            #  61:     assign v1 <- 78857
    movl    %eax, v1               
    jmp     l_test_49_if_false      #  62:     goto   49_if_false
    jmp     l_test_47               #  63:     goto   47
l_test_49_if_false:
l_test_47:
    jmp     l_test_44_while_cond    #  66:     goto   44_while_cond
    movl    $85716, %eax            #  67:     if     85716 < 79033 goto 51_if_true
    movl    $79033, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_51_if_true      
    jmp     l_test_52_if_false      #  68:     goto   52_if_false
l_test_51_if_true:
    call    dummyINTfunc            #  70:     call   t5 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_test_56_while_cond:
    jmp     l_test_55               #  72:     goto   55
    jmp     l_test_56_while_cond    #  73:     goto   56_while_cond
l_test_55:
    movl    $0, %eax                #  75:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_50               #  76:     goto   50
l_test_52_if_false:
l_test_50:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
