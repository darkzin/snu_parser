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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 53 of <array 65 of <array 50 of <array 16 of <array 74 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 85 of <array 61 of <array 5 of <array 99 of <bool>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v3       <bool> %ebp-29 ]

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
    movl    $97, %eax               #   0:     if     97 >= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $37568, %eax            #   3:     assign v2 <- 37568
    movl    %eax, -28(%ebp)        
    movl    $100, %eax              #   4:     return 100
    jmp     l_f0_exit              
    movl    $98, %eax               #   5:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_8_while_cond:
    movl    $23419, %eax            #  10:     mul    t3 <- 23419, 93208
    movl    $93208, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     if     t3 <= 99705 goto 9_while_body
    movl    $99705, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_9_while_body      
    jmp     l_f0_7                  #  12:     goto   7
l_f0_9_while_body:
    jmp     l_f0_11                 #  14:     goto   11
l_f0_11:
    movl    $99, %eax               #  16:     return 99
    jmp     l_f0_exit              
l_f0_16_while_cond:
    jmp     l_f0_15                 #  18:     goto   15
    jmp     l_f0_16_while_cond      #  19:     goto   16_while_cond
l_f0_15:
    jmp     l_f0_8_while_cond       #  21:     goto   8_while_cond
l_f0_7:
    call    ReadInt                 #  23:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $93032, %eax            #  24:     if     93032 < t4 goto 19
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_19                
    jmp     l_f0_20                 #  25:     goto   20
l_f0_19:
    movl    $1, %eax                #  27:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_21                 #  28:     goto   21
l_f0_20:
    movl    $0, %eax                #  30:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f0_21:
    movzbl  -21(%ebp), %eax         #  32:     assign v3 <- t5
    movb    %al, -29(%ebp)         

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <char> %ebp-25 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    jmp     l_f1_3                  #   2:     goto   3
    jmp     l_f1_4_while_cond       #   3:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98020, %eax            #   8:     div    t3 <- 98020, 89889
    movl    $89889, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     if     t3 > 13392 goto 10_if_true
    movl    $13392, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  10:     goto   11_if_false
l_f1_10_if_true:
l_f1_14_while_cond:
    jmp     l_f1_13                 #  13:     goto   13
    jmp     l_f1_14_while_cond      #  14:     goto   14_while_cond
l_f1_13:
    movl    $98, %eax               #  16:     assign v0 <- 98
    movb    %al, -25(%ebp)         
    jmp     l_f1_9                  #  17:     goto   9
l_f1_11_if_false:
l_f1_9:
l_f1_18_while_cond:
    movl    $91633, %eax            #  21:     div    t4 <- 91633, 72821
    movl    $72821, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t5 <- t4, 75926
    movl    $75926, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $34834, %eax            #  23:     if     34834 <= t5 goto 19_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_19_while_body     
    jmp     l_f1_17                 #  24:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  26:     goto   18_while_cond
l_f1_17:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 2 of <array 85 of <array 61 of <array 5 of <array 99 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 53 of <array 65 of <array 50 of <array 16 of <array 74 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <bool> %ebp-23 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 48 of <array 81 of <array 30 of <array 24 of <array 62 of <bool>>>>>>> %ebp+8 ]
    #    -24(%ebp)   1  [ $v1       <char> %ebp-24 ]
    #   -815776048(%ebp)  815776024  [ $v2       <array 53 of <array 65 of <array 50 of <array 16 of <array 74 of <int>>>>>> %ebp-815776048 ]
    #   -820909224(%ebp)  5133174  [ $v3       <array 2 of <array 85 of <array 61 of <array 5 of <array 99 of <bool>>>>>> %ebp-820909224 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $820909212, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $205227303, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-815776048(%ebp)     # local array 'v2': 5 dimensions
    movl    $53,-815776044(%ebp)    #   dimension 1: 53 elements
    movl    $65,-815776040(%ebp)    #   dimension 2: 65 elements
    movl    $50,-815776036(%ebp)    #   dimension 3: 50 elements
    movl    $16,-815776032(%ebp)    #   dimension 4: 16 elements
    movl    $74,-815776028(%ebp)    #   dimension 5: 74 elements
    movl    $5,-820909224(%ebp)     # local array 'v3': 5 dimensions
    movl    $2,-820909220(%ebp)     #   dimension 1: 2 elements
    movl    $85,-820909216(%ebp)    #   dimension 2: 85 elements
    movl    $61,-820909212(%ebp)    #   dimension 3: 61 elements
    movl    $5,-820909208(%ebp)     #   dimension 4: 5 elements
    movl    $99,-820909204(%ebp)    #   dimension 5: 99 elements

    # function body
    leal    -820909224(%ebp), %eax  #   0:     &()    t3 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t3
    pushl   %eax                   
    leal    -815776048(%ebp), %eax  #   2:     &()    t4 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   4:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     assign v1 <- t5
    movb    %al, -24(%ebp)         
    call    dummyCHARfunc           #   6:     call   t6 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $97, %eax               #   7:     if     97 <= t6 goto 2
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_2                 
    jmp     l_f2_3                  #   8:     goto   3
l_f2_2:
    movl    $1, %eax                #  10:     assign t7 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f2_4                  #  11:     goto   4
l_f2_3:
    movl    $0, %eax                #  13:     assign t7 <- 0
    movb    %al, -23(%ebp)         
l_f2_4:
    movzbl  -23(%ebp), %eax         #  15:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_8_if_false         #  16:     goto   8_if_false
    jmp     l_f2_10_if_true         #  17:     goto   10_if_true
    jmp     l_f2_11_if_false        #  18:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  20:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_6                  #  23:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $820909212, %esp        # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-24 ]

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
l_test_1_while_cond:
    movl    $55408, %eax            #   1:     add    t0 <- 55408, 43528
    movl    $43528, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t1 <- t0, 70671
    movl    $70671, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t1 <= 84146 goto 2_while_body
    movl    $84146, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    jmp     l_test_4                #   9:     goto   4
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #  11:     goto   8_while_cond
    jmp     l_test_exit            
    movl    $98, %eax               #  13:     if     98 > 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_12_if_true      
    jmp     l_test_13_if_false      #  14:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  16:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_5_while_cond     #  19:     goto   5_while_cond
l_test_4:
    leal    _str_1, %eax            #  21:     &()    t2 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  23:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
