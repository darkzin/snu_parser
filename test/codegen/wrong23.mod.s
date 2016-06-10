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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 7 of <array 6 of <array 10 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 2 of <array 10 of <array 10 of <array 8 of <int>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f0_3_while_cond:
l_f0_7_while_cond:
    jmp     l_f0_6                  #   5:     goto   6
    jmp     l_f0_7_while_cond       #   6:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond

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
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <array 2 of <array 10 of <array 10 of <array 8 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 4 of <array 7 of <array 6 of <array 10 of <array 5 of <char>>>>>>> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 7 of <array 10 of <array 9 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -48(%ebp)   4  [ $v2       <int> %ebp-48 ]
    #   -8472(%ebp)  8424  [ $v3       <array 4 of <array 7 of <array 6 of <array 10 of <array 5 of <char>>>>>> %ebp-8472 ]
    #   -53296(%ebp)  44824  [ $v4       <array 7 of <array 2 of <array 10 of <array 10 of <array 8 of <int>>>>>> %ebp-53296 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $53284, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13321, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-8472(%ebp)          # local array 'v3': 5 dimensions
    movl    $4,-8468(%ebp)          #   dimension 1: 4 elements
    movl    $7,-8464(%ebp)          #   dimension 2: 7 elements
    movl    $6,-8460(%ebp)          #   dimension 3: 6 elements
    movl    $10,-8456(%ebp)         #   dimension 4: 10 elements
    movl    $5,-8452(%ebp)          #   dimension 5: 5 elements
    movl    $5,-53296(%ebp)         # local array 'v4': 5 dimensions
    movl    $7,-53292(%ebp)         #   dimension 1: 7 elements
    movl    $2,-53288(%ebp)         #   dimension 2: 2 elements
    movl    $10,-53284(%ebp)        #   dimension 3: 10 elements
    movl    $10,-53280(%ebp)        #   dimension 4: 10 elements
    movl    $8,-53276(%ebp)         #   dimension 5: 8 elements

    # function body
    movl    $37522, %eax            #   0:     mul    t4 <- 37522, 86859
    movl    $86859, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     div    t5 <- t4, 65958
    movl    $65958, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     div    t6 <- t5, 95681
    movl    $95681, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     div    t7 <- t6, 72907
    movl    $72907, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    movl    $100, %eax              #   6:     if     100 <= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   7:     goto   3_if_false
l_f1_2_if_true:
    movl    $72344, %eax            #   9:     assign v2 <- 72344
    movl    %eax, -48(%ebp)        
    movl    $99, %eax               #  10:     return 99
    jmp     l_f1_exit              
l_f1_8_while_cond:
    movl    $25027, %eax            #  12:     if     25027 <= 25015 goto 9_while_body
    movl    $25015, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_9_while_body      
    jmp     l_f1_7                  #  13:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  15:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_11                 #  17:     goto   11
l_f1_11:
    jmp     l_f1_1                  #  19:     goto   1
l_f1_3_if_false:
l_f1_1:
    leal    -53296(%ebp), %eax      #  22:     &()    t8 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     param  3 <- t8
    pushl   %eax                   
    leal    -8472(%ebp), %eax       #  24:     &()    t9 <- v3
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     param  2 <- t9
    pushl   %eax                   
    movl    $100, %eax              #  26:     param  1 <- 100
    pushl   %eax                   
    call    ReadInt                 #  27:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  28:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  29:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  30:     if     t11 = 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  31:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  33:     goto   14
l_f1_16_if_false:
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $53284, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 4 of <array 7 of <array 10 of <array 9 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 10 of <array 6 of <array 6 of <array 2 of <char>>>>>>> %ebp+16 ]
    #   -90768(%ebp)  90744  [ $v3       <array 4 of <array 7 of <array 10 of <array 9 of <array 9 of <int>>>>>> %ebp-90768 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $90756, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22689, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-90768(%ebp)         # local array 'v3': 5 dimensions
    movl    $4,-90764(%ebp)         #   dimension 1: 4 elements
    movl    $7,-90760(%ebp)         #   dimension 2: 7 elements
    movl    $10,-90756(%ebp)        #   dimension 3: 10 elements
    movl    $9,-90752(%ebp)         #   dimension 4: 9 elements
    movl    $9,-90748(%ebp)         #   dimension 5: 9 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    jmp     l_f2_0                  #   3:     goto   0
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
    movl    $60112, %eax            #   6:     assign v1 <- 60112
    movl    %eax, 12(%ebp)         
    movl    $97, %eax               #   7:     if     97 >= 99 goto 8
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_8                 
    jmp     l_f2_9                  #   8:     goto   9
l_f2_8:
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_10                 #  11:     goto   10
l_f2_9:
    movl    $0, %eax                #  13:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_10:
    movzbl  -13(%ebp), %eax         #  15:     param  1 <- t4
    pushl   %eax                   
    leal    -90768(%ebp), %eax      #  16:     &()    t5 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  18:     call   t6 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  19:     return t6
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $90756, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 7 of <array 10 of <array 9 of <array 9 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    movl    $61132, %eax            #   0:     div    t0 <- 61132, 58970
    movl    $58970, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_2_if_true        #   3:     goto   2_if_true
    jmp     l_test_2_if_true        #   4:     goto   2_if_true
l_test_2_if_true:
    movl    $4947, %eax             #   6:     assign v0 <- 4947
    movl    %eax, v0               
    jmp     l_test_1                #   7:     goto   1
l_test_1:
    movl    $65058, %eax            #   9:     if     65058 > 65624 goto 9
    movl    $65624, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_9               
    jmp     l_test_10               #  10:     goto   10
l_test_9:
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_11:
    movzbl  -17(%ebp), %eax         #  17:     param  1 <- t1
    pushl   %eax                   
    leal    v2, %eax                #  18:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  20:     call   t3 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  21:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_15_if_false      #  22:     goto   15_if_false
    jmp     l_test_13               #  23:     goto   13
l_test_15_if_false:
l_test_13:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 4 of <array 7 of <array 10 of <array 9 of <array 9 of <int>>>>>>
    .long    5
    .long    4
    .long    7
    .long   10
    .long    9
    .long    9
    .skip 90720








    # end of global data section
    #-----------------------------------------

    .end
##################################################
