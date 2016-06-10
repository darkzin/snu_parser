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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 5 of <array 4 of <array 5 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f0_3_while_cond:
    movl    $27785, %eax            #   3:     div    t6 <- 27785, 40373
    movl    $40373, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $55717, %eax            #   4:     sub    t7 <- 55717, 94479
    movl    $94479, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t6 > t7 goto 4_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #   6:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <char> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -30(%ebp)   1  [ $v1       <char> %ebp-30 ]

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
l_f1_1_while_cond:
    movl    $58154, %eax            #   1:     add    t4 <- 58154, 26090
    movl    $26090, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $68153, %eax            #   2:     sub    t5 <- 68153, 14992
    movl    $14992, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t6 <- t5, 13819
    movl    $13819, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t7 <- t6, 72017
    movl    $72017, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -16(%ebp), %eax         #   5:     if     t4 >= t7 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  10:     call   t8 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  11:     return t8
    jmp     l_f1_exit              
    movl    $100, %eax              #  12:     assign v1 <- 100
    movb    %al, -30(%ebp)         

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t15      <ptr(4) to <array 4 of <array 5 of <array 4 of <array 5 of <array 10 of <char>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t16      <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t17      <bool> %ebp-38 ]
    #    -39(%ebp)   1  [ $t4       <bool> %ebp-39 ]
    #    -40(%ebp)   1  [ $t5       <bool> %ebp-40 ]
    #    -41(%ebp)   1  [ $t6       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -57(%ebp)   1  [ $v1       <bool> %ebp-57 ]
    #   -4084(%ebp)  4024  [ $v2       <array 4 of <array 5 of <array 4 of <array 5 of <array 10 of <char>>>>>> %ebp-4084 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4072, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1018, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4084(%ebp)          # local array 'v2': 5 dimensions
    movl    $4,-4080(%ebp)          #   dimension 1: 4 elements
    movl    $5,-4076(%ebp)          #   dimension 2: 5 elements
    movl    $4,-4072(%ebp)          #   dimension 3: 4 elements
    movl    $5,-4068(%ebp)          #   dimension 4: 5 elements
    movl    $10,-4064(%ebp)         #   dimension 5: 10 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_3                  #   1:     goto   3
l_f2_3:
l_f2_7_while_cond:
    movl    $98, %eax               #   4:     if     98 >= 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_8_while_body      
    jmp     l_f2_6                  #   5:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   7:     goto   7_while_cond
l_f2_6:
    movl    $97, %eax               #   9:     if     97 >= 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_11                
    jmp     l_f2_12                 #  10:     goto   12
l_f2_11:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -39(%ebp)         
    jmp     l_f2_13                 #  13:     goto   13
l_f2_12:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -39(%ebp)         
l_f2_13:
    movzbl  -39(%ebp), %eax         #  17:     assign v1 <- t4
    movb    %al, -57(%ebp)         
    jmp     l_f2_0                  #  18:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $1991, %eax             #  21:     if     1991 <= 13535 goto 16_if_true
    movl    $13535, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  22:     goto   17_if_false
l_f2_16_if_true:
    movl    $1, %eax                #  24:     if     1 # 1 goto 23
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_23                
    jmp     l_f2_24                 #  25:     goto   24
l_f2_23:
    movl    $1, %eax                #  27:     assign t5 <- 1
    movb    %al, -40(%ebp)         
    jmp     l_f2_25                 #  28:     goto   25
l_f2_24:
    movl    $0, %eax                #  30:     assign t5 <- 0
    movb    %al, -40(%ebp)         
l_f2_25:
    movzbl  -40(%ebp), %eax         #  32:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  33:     call   t6 <- f1
    addl    $4, %esp               
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  34:     if     t6 > 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  35:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  37:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_15                 #  40:     goto   15
l_f2_17_if_false:
l_f2_15:
l_f2_28_while_cond:
    jmp     l_f2_32                 #  44:     goto   32
    movl    $67729, %eax            #  45:     sub    t7 <- 67729, 27951
    movl    $27951, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  46:     sub    t8 <- t7, 87396
    movl    $87396, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  47:     sub    t9 <- t8, 18358
    movl    $18358, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  48:     add    t10 <- t9, 60900
    movl    $60900, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  49:     sub    t11 <- t10, 26532
    movl    $26532, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  50:     add    t12 <- t11, 55998
    movl    $55998, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  51:     sub    t13 <- t12, 59881
    movl    $59881, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  52:     if     t13 # 51648 goto 35
    movl    $51648, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_35                
    jmp     l_f2_36                 #  53:     goto   36
l_f2_35:
    movl    $1, %eax                #  55:     assign t14 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_37                 #  56:     goto   37
l_f2_36:
    movl    $0, %eax                #  58:     assign t14 <- 0
    movb    %al, -29(%ebp)         
l_f2_37:
    movzbl  -29(%ebp), %eax         #  60:     param  1 <- t14
    pushl   %eax                   
    leal    -4084(%ebp), %eax       #  61:     &()    t15 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  62:     param  0 <- t15
    pushl   %eax                   
    call    f0                      #  63:     call   t16 <- f0
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  64:     if     t16 = 1 goto 31
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_31                
    jmp     l_f2_32                 #  65:     goto   32
l_f2_31:
    movl    $1, %eax                #  67:     assign t17 <- 1
    movb    %al, -38(%ebp)         
    jmp     l_f2_33                 #  68:     goto   33
l_f2_32:
    movl    $0, %eax                #  70:     assign t17 <- 0
    movb    %al, -38(%ebp)         
l_f2_33:
    movl    $1, %eax                #  72:     if     1 # t17 goto 29_while_body
    movzbl  -38(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_29_while_body     
    jmp     l_f2_27                 #  73:     goto   27
l_f2_29_while_body:
    jmp     l_f2_28_while_cond      #  75:     goto   28_while_cond
l_f2_27:

l_f2_exit:
    # epilogue
    addl    $4072, %esp             # remove locals
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
l_test_1_while_cond:
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $64083, %eax            #   2:     sub    t1 <- 64083, 47197
    movl    $47197, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t2 <- t1, 29192
    movl    $29192, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #   4:     if     t0 <= t2 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   5:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_8_if_false       #  11:     goto   8_if_false
    jmp     l_test_8_if_false       #  12:     goto   8_if_false
    jmp     l_test_8_if_false       #  13:     goto   8_if_false
    jmp     l_test_6                #  14:     goto   6
l_test_8_if_false:
l_test_6:
l_test_13_while_cond:
    call    ReadInt                 #  18:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_test_13_while_cond    #  19:     goto   13_while_cond
    jmp     l_test_exit            

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
