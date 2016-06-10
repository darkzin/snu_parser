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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 4 of <array 7 of <array 4 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     assign v3 <- 99
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t2
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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t10      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <bool> %ebp-34 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 3 of <array 4 of <array 7 of <array 4 of <array 8 of <char>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <char> %ebp-41 ]
    #    -42(%ebp)   1  [ $t9       <bool> %ebp-42 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 4 of <array 5 of <array 10 of <array 8 of <int>>>>>>> %ebp+8 ]
    #   -2756(%ebp)  2712  [ $v1       <array 3 of <array 4 of <array 7 of <array 4 of <array 8 of <char>>>>>> %ebp-2756 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2744, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $686, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2756(%ebp)          # local array 'v1': 5 dimensions
    movl    $3,-2752(%ebp)          #   dimension 1: 3 elements
    movl    $4,-2748(%ebp)          #   dimension 2: 4 elements
    movl    $7,-2744(%ebp)          #   dimension 3: 7 elements
    movl    $4,-2740(%ebp)          #   dimension 4: 4 elements
    movl    $8,-2736(%ebp)          #   dimension 5: 8 elements

    # function body
    movl    $72397, %eax            #   0:     sub    t1 <- 72397, 60924
    movl    $60924, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $31340, %eax            #   1:     div    t2 <- 31340, 12019
    movl    $12019, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     mul    t3 <- t2, 57121
    movl    $57121, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -16(%ebp), %eax         #   3:     sub    t4 <- t1, t3
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $90107, %eax            #   4:     if     90107 > t4 goto 1
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   5:     goto   2
l_f1_1:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_3                  #   8:     goto   3
l_f1_2:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_f1_3:
    movzbl  -33(%ebp), %eax         #  12:     return t5
    jmp     l_f1_exit              
    movl    $76546, %eax            #  13:     if     76546 = 89114 goto 6_if_true
    movl    $89114, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  14:     goto   7_if_false
l_f1_6_if_true:
    movl    $62003, %eax            #  16:     param  2 <- 62003
    pushl   %eax                   
    movl    $100, %eax              #  17:     if     100 > 98 goto 10
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_10                
    jmp     l_f1_11                 #  18:     goto   11
l_f1_10:
    movl    $1, %eax                #  20:     assign t6 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f1_12                 #  21:     goto   12
l_f1_11:
    movl    $0, %eax                #  23:     assign t6 <- 0
    movb    %al, -34(%ebp)         
l_f1_12:
    movzbl  -34(%ebp), %eax         #  25:     param  1 <- t6
    pushl   %eax                   
    leal    -2756(%ebp), %eax       #  26:     &()    t7 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  27:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  28:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -41(%ebp)         
    jmp     l_f1_5                  #  29:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyBOOLfunc           #  32:     call   t9 <- dummyBOOLfunc
    movb    %al, -42(%ebp)         
    movzbl  -42(%ebp), %eax         #  33:     if     t9 = 1 goto 15
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_15                
l_f1_15:
    movl    $1, %eax                #  35:     assign t10 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_17                 #  36:     goto   17
    movl    $0, %eax                #  37:     assign t10 <- 0
    movb    %al, -17(%ebp)         
l_f1_17:
    movzbl  -17(%ebp), %eax         #  39:     return t10
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $2744, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 3 of <array 4 of <array 7 of <array 4 of <array 8 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 3 of <array 7 of <array 7 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 6 of <array 4 of <array 3 of <array 8 of <char>>>>>>> %ebp+20 ]
    #   -2748(%ebp)  2712  [ $v4       <array 3 of <array 4 of <array 7 of <array 4 of <array 8 of <char>>>>>> %ebp-2748 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2736, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $684, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2748(%ebp)          # local array 'v4': 5 dimensions
    movl    $3,-2744(%ebp)          #   dimension 1: 3 elements
    movl    $4,-2740(%ebp)          #   dimension 2: 4 elements
    movl    $7,-2736(%ebp)          #   dimension 3: 7 elements
    movl    $4,-2732(%ebp)          #   dimension 4: 4 elements
    movl    $8,-2728(%ebp)          #   dimension 5: 8 elements

    # function body
    movl    $100, %eax              #   0:     return 100
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $97, %eax               #   2:     if     97 < 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
    movl    $47168, %eax            #   7:     if     47168 = 37638 goto 9_if_true
    movl    $37638, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   8:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_if_false:
l_f2_8:
l_f2_13_while_cond:
    jmp     l_f2_12                 #  14:     goto   12
    jmp     l_f2_13_while_cond      #  15:     goto   13_while_cond
l_f2_12:
    movl    $100, %eax              #  17:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #  18:     goto   2_while_cond
l_f2_1:
    movl    $96989, %eax            #  20:     add    t1 <- 96989, 72491
    movl    $72491, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     sub    t2 <- t1, 56530
    movl    $56530, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t3 <- t2, 58289
    movl    $58289, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  2 <- t3
    pushl   %eax                   
    movl    $1878, %eax             #  24:     if     1878 = 10236 goto 17
    movl    $10236, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_17                
    jmp     l_f2_18                 #  25:     goto   18
l_f2_17:
    movl    $1, %eax                #  27:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_19                 #  28:     goto   19
l_f2_18:
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f2_19:
    movzbl  -25(%ebp), %eax         #  32:     param  1 <- t4
    pushl   %eax                   
    leal    -2748(%ebp), %eax       #  33:     &()    t5 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  35:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  36:     return t6
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $2736, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_4_while_cond:
    call    dummyCHARfunc           #   4:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     if     t0 <= 97 goto 5_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_5_while_body    
    jmp     l_test_3                #   6:     goto   3
l_test_5_while_body:
l_test_8_while_cond:
    jmp     l_test_7                #   9:     goto   7
    jmp     l_test_8_while_cond     #  10:     goto   8_while_cond
l_test_7:
    call    dummyProcedure          #  12:     call   dummyProcedure
    movl    $98, %eax               #  13:     if     98 >= 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_12_if_true      
    jmp     l_test_13_if_false      #  14:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  16:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_4_while_cond     #  19:     goto   4_while_cond
l_test_3:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
