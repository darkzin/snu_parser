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
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 3 of <array 10 of <array 7 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_2_if_true          #   1:     goto   2_if_true
l_f0_2_if_true:
    movl    $0, %eax                #   3:     return 0
    jmp     l_f0_exit              
    call    WriteLn                 #   4:     call   WriteLn
    jmp     l_f0_1                  #   5:     goto   1
l_f0_1:
    movl    $6389, %eax             #   7:     sub    t8 <- 6389, 73658
    movl    $73658, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     add    t9 <- t8, 11494
    movl    $11494, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $25349, %eax            #   9:     if     25349 < t9 goto 8
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_8                 
    jmp     l_f0_9                  #  10:     goto   9
l_f0_8:
    movl    $1, %eax                #  12:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_10                 #  13:     goto   10
l_f0_9:
    movl    $0, %eax                #  15:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_10:
    movzbl  -13(%ebp), %eax         #  17:     return t10
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 5 of <array 7 of <array 10 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 3 of <array 3 of <array 2 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 6 of <array 4 of <array 10 of <array 8 of <int>>>>>>> %ebp+16 ]
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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_5_while_cond:
    movl    $13138, %eax            #   3:     if     13138 >= 6609 goto 6_while_body
    movl    $6609, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_6_while_body      
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    movl    $98, %eax               #   8:     assign v3 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_11_if_false        #  12:     goto   11_if_false
    jmp     l_f1_11_if_false        #  13:     goto   11_if_false
    jmp     l_f1_11_if_false        #  14:     goto   11_if_false
l_f1_16_while_cond:
    movl    $99, %eax               #  16:     if     99 = 100 goto 17_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_17_while_body     
    jmp     l_f1_15                 #  17:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  19:     goto   16_while_cond
l_f1_15:
    jmp     l_f1_9                  #  21:     goto   9
l_f1_11_if_false:
l_f1_9:
    call    dummyCHARfunc           #  24:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 6 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 8 of <array 8 of <array 8 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 9 of <array 2 of <array 7 of <array 6 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 7 of <array 3 of <array 5 of <array 7 of <int>>>>>>> %ebp+20 ]
    #    -18(%ebp)   1  [ $v4       <bool> %ebp-18 ]

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
    call    ReadInt                 #   0:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_2_if_true          #   1:     goto   2_if_true
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    call    dummyBOOLfunc           #   4:     call   t8 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $1, %eax                #   5:     return 1
    jmp     l_f2_exit              
    call    WriteLn                 #   6:     call   WriteLn
    movl    $0, %eax                #   7:     assign v4 <- 0
    movb    %al, -18(%ebp)         
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_13_while_cond:
    movl    $1, %eax                #  12:     if     1 # 0 goto 14_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_14_while_body     
    jmp     l_f2_12                 #  13:     goto   12
l_f2_14_while_body:
    jmp     l_f2_18_if_false        #  15:     goto   18_if_false
    jmp     l_f2_16                 #  16:     goto   16
l_f2_18_if_false:
l_f2_16:
    movl    $52035, %eax            #  19:     if     52035 # 71036 goto 20_if_true
    movl    $71036, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  20:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  22:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_13_while_cond      #  25:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -34(%ebp)   1  [ $t6       <char> %ebp-34 ]

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
l_test_1_while_cond:
    movl    $100, %eax              #   1:     if     100 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    call    dummyINTfunc            #   7:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $4558, %eax             #   8:     mul    t1 <- 4558, 84487
    movl    $84487, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     div    t2 <- t1, 50572
    movl    $50572, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $39799, %eax            #  10:     if     39799 > t2 goto 7_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_7_if_true       
    jmp     l_test_8_if_false       #  11:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #  13:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $28975, %eax            #  16:     mul    t3 <- 28975, 25487
    movl    $25487, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $19851, %eax            #  17:     add    t4 <- 19851, t3
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $47385, %eax            #  18:     if     47385 # t4 goto 11
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_11              
    jmp     l_test_12               #  19:     goto   12
l_test_11:
    movl    $1, %eax                #  21:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_13               #  22:     goto   13
l_test_12:
    movl    $0, %eax                #  24:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_13:
    movzbl  -33(%ebp), %eax         #  26:     assign v0 <- t5
    movb    %al, v0                
    movl    $26772, %eax            #  27:     assign v1 <- 26772
    movl    %eax, v1               
    call    dummyCHARfunc           #  28:     call   t6 <- dummyCHARfunc
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  29:     assign v2 <- t6
    movb    %al, v2                

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
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
