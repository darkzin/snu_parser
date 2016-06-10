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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 93 of <array 7 of <array 8 of <array 94 of <array 99 of <char>>>>>>> %ebp+16 ]

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
    movl    $10770, %eax            #   0:     add    t7 <- 10770, 19922
    movl    $19922, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $86967, %eax            #   1:     if     86967 > t7 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyINTfunc            #   7:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   8:     call   t9 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   9:     if     t9 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6_if_true         
    jmp     l_f0_6_if_true          #  10:     goto   6_if_true
    jmp     l_f0_7_if_false         #  11:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #  13:     goto   5
l_f0_7_if_false:
l_f0_5:

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 92 of <array 63 of <array 81 of <array 59 of <array 89 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 48 of <array 7 of <array 59 of <array 16 of <array 23 of <char>>>>>>> %ebp+12 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]

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
l_f1_1_while_cond:
    movl    $82447, %eax            #   1:     sub    t7 <- 82447, 18427
    movl    $18427, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t8 <- t7, 1563
    movl    $1563, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $78463, %eax            #   3:     if     78463 > t8 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $73678, %eax            #   8:     if     73678 <= 88444 goto 5
    movl    $88444, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5                 
    jmp     l_f1_6                  #   9:     goto   6
l_f1_5:
    movl    $1, %eax                #  11:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_7                  #  12:     goto   7
l_f1_6:
    movl    $0, %eax                #  14:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f1_7:
    movzbl  -21(%ebp), %eax         #  16:     assign v2 <- t9
    movb    %al, -22(%ebp)         
    jmp     l_f1_10_if_true         #  17:     goto   10_if_true
l_f1_10_if_true:
    jmp     l_f1_9                  #  19:     goto   9
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 94 of <array 86 of <array 74 of <array 14 of <array 55 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 68 of <array 9 of <array 57 of <array 23 of <array 74 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 98 of <array 90 of <array 74 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 51 of <array 17 of <array 61 of <array 59 of <int>>>>>>> %ebp+20 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    movl    $1, %eax                #   3:     if     1 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  11:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     assign v4 <- t7
    movb    %al, -14(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <bool> %ebp-34 ]

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
    jmp     l_test_exit            
    movl    $33650, %eax            #   1:     sub    t0 <- 33650, 11865
    movl    $11865, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $42072, %eax            #   2:     div    t1 <- 42072, 64762
    movl    $64762, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t2 <- t1, 70609
    movl    $70609, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     mul    t3 <- t2, 86371
    movl    $86371, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -16(%ebp), %eax         #   5:     sub    t4 <- t0, t3
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $57408, %eax            #   6:     if     57408 >= t4 goto 2
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2               
    jmp     l_test_3                #   7:     goto   3
l_test_2:
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_4                #  10:     goto   4
l_test_3:
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_4:
    movzbl  -33(%ebp), %eax         #  14:     assign v0 <- t5
    movb    %al, v0                
    movl    $100, %eax              #  15:     if     100 < 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_7_if_true       
    jmp     l_test_8_if_false       #  16:     goto   8_if_false
l_test_7_if_true:
    movl    $99, %eax               #  18:     if     99 = 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  19:     goto   12_if_false
l_test_11_if_true:
    movl    $1, %eax                #  21:     if     1 = 0 goto 15
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15              
    jmp     l_test_16               #  22:     goto   16
l_test_15:
    movl    $1, %eax                #  24:     assign t6 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_test_17               #  25:     goto   17
l_test_16:
    movl    $0, %eax                #  27:     assign t6 <- 0
    movb    %al, -34(%ebp)         
l_test_17:
    movzbl  -34(%ebp), %eax         #  29:     assign v0 <- t6
    movb    %al, v0                
    jmp     l_test_10               #  30:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_6                #  33:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $91592, %eax            #  36:     if     91592 >= 6692 goto 20_if_true
    movl    $6692, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_20_if_true      
    jmp     l_test_21_if_false      #  37:     goto   21_if_false
l_test_20_if_true:
l_test_24_while_cond:
    jmp     l_test_23               #  40:     goto   23
    jmp     l_test_24_while_cond    #  41:     goto   24_while_cond
l_test_23:
    jmp     l_test_exit            
    jmp     l_test_19               #  44:     goto   19
l_test_21_if_false:
l_test_19:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
