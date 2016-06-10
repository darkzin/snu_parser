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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 1 of <array 9 of <array 3 of <array 9 of <int>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t5 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_7                  #  10:     goto   7
    movl    $1, %eax                #  11:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #  12:     goto   8
l_f0_7:
    movl    $0, %eax                #  14:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    movzbl  -15(%ebp), %eax         #  16:     return t7
    jmp     l_f0_exit              
    movl    $84624, %eax            #  17:     if     84624 <= 46261 goto 14_if_true
    movl    $46261, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  18:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  20:     goto   13
l_f0_15_if_false:
l_f0_13:
    movl    $100, %eax              #  23:     if     100 > 99 goto 18_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  24:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  26:     goto   17
l_f0_19_if_false:
l_f0_17:
    movl    $83752, %eax            #  29:     assign v1 <- 83752
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  30:     assign v2 <- 98
    movb    %al, -21(%ebp)         
    movl    $18628, %eax            #  31:     if     18628 <= 19173 goto 24
    movl    $19173, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_24                
    jmp     l_f0_25                 #  32:     goto   25
l_f0_24:
    movl    $1, %eax                #  34:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_26                 #  35:     goto   26
l_f0_25:
    movl    $0, %eax                #  37:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f0_26:
    movzbl  -16(%ebp), %eax         #  39:     return t8
    jmp     l_f0_exit              
    jmp     l_f0_10                 #  40:     goto   10
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    movl    $68871, %eax            #   0:     add    t5 <- 68871, 57851
    movl    $57851, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t5
    movl    %eax, 8(%ebp)          
    call    ReadInt                 #   2:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyProcedure          #   3:     call   dummyProcedure

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 10 of <array 5 of <array 3 of <array 6 of <int>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f2_3_while_cond:
    movl    $100, %eax              #   3:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #   4:     return 99
    jmp     l_f2_exit              
    movl    $98, %eax               #   5:     param  2 <- 98
    pushl   %eax                   
    movl    $99, %eax               #   6:     param  1 <- 99
    pushl   %eax                   
    movl    $60937, %eax            #   7:     param  0 <- 60937
    pushl   %eax                   
    call    f1                      #   8:     call   t7 <- f1
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    jmp     l_f2_3_while_cond       #   9:     goto   3_while_cond

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 10 of <array 5 of <array 3 of <array 6 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $64181, %eax            #   1:     if     64181 <= 66087 goto 2_while_body
    movl    $66087, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    movl    $67044, %eax            #   5:     if     67044 > 41228 goto 6_while_body
    movl    $41228, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
l_test_4:
    jmp     l_test_8                #  10:     goto   8
l_test_8:
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  13:     goto   12_while_cond
    jmp     l_test_1_while_cond     #  14:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #  16:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #  17:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    leal    v0, %eax                #  18:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  1 <- t2
    pushl   %eax                   
    movl    $99, %eax               #  20:     param  0 <- 99
    pushl   %eax                   
    call    f2                      #  21:     call   t3 <- f2
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  22:     param  2 <- t3
    pushl   %eax                   
    movl    $98, %eax               #  23:     param  1 <- 98
    pushl   %eax                   
    movl    $80375, %eax            #  24:     param  0 <- 80375
    pushl   %eax                   
    call    f1                      #  25:     call   t4 <- f1
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        
    movl    $97, %eax               #  26:     if     97 >= 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_18_if_true      
    jmp     l_test_19_if_false      #  27:     goto   19_if_false
l_test_18_if_true:
    movl    $100, %eax              #  29:     if     100 < 98 goto 22_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_22_if_true      
    jmp     l_test_23_if_false      #  30:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  32:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_exit            
    jmp     l_test_17               #  36:     goto   17
l_test_19_if_false:
l_test_17:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 9 of <array 10 of <array 5 of <array 3 of <array 6 of <int>>>>>>
    .long    5
    .long    9
    .long   10
    .long    5
    .long    3
    .long    6
    .skip 32400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
