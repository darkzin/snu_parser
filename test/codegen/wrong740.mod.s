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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 3 of <array 8 of <array 4 of <array 8 of <char>>>>>>> %ebp+12 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_7_while_cond:
    call    dummyBOOLfunc           #   5:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     if     t5 = 1 goto 13
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_13                
    jmp     l_f0_6                  #   7:     goto   6
l_f0_13:
    jmp     l_f0_6                  #   9:     goto   6
    jmp     l_f0_6                  #  10:     goto   6
    jmp     l_f0_7_while_cond       #  11:     goto   7_while_cond
l_f0_6:
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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 2 of <array 2 of <array 6 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 8 of <array 3 of <array 2 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 8 of <array 4 of <array 10 of <array 8 of <int>>>>>>> %ebp+20 ]
    #    -24(%ebp)   4  [ $v5       <int> %ebp-24 ]

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
    movl    $4384, %eax             #   0:     mul    t5 <- 4384, 14671
    movl    $14671, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v5 <- t5
    movl    %eax, -24(%ebp)        
l_f1_2_while_cond:
    movl    $0, %eax                #   3:     if     0 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    movl    $5826, %eax             #   6:     if     5826 < 22178 goto 6
    movl    $22178, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $1, %eax                #   9:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $0, %eax                #  12:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movzbl  -17(%ebp), %eax         #  14:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  15:     goto   2_while_cond
l_f1_1:
l_f1_11_while_cond:
    movl    $52009, %eax            #  18:     if     52009 > 84184 goto 12_while_body
    movl    $84184, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_12_while_body     
    jmp     l_f1_10                 #  19:     goto   10
l_f1_12_while_body:
    movl    $59259, %eax            #  21:     param  0 <- 59259
    pushl   %eax                   
    call    WriteInt                #  22:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_11_while_cond      #  23:     goto   11_while_cond
l_f1_10:

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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 9 of <array 8 of <array 4 of <array 10 of <array 8 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 8 of <array 3 of <array 2 of <array 6 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 1 of <array 2 of <array 2 of <array 6 of <array 3 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 3 of <array 4 of <array 8 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 1 of <array 2 of <array 7 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 10 of <array 4 of <array 6 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #   -340(%ebp)  312  [ $v4       <array 1 of <array 2 of <array 2 of <array 6 of <array 3 of <int>>>>>> %ebp-340 ]
    #   -1516(%ebp)  1176  [ $v5       <array 4 of <array 8 of <array 3 of <array 2 of <array 6 of <bool>>>>>> %ebp-1516 ]
    #   -93700(%ebp)  92184  [ $v6       <array 9 of <array 8 of <array 4 of <array 10 of <array 8 of <int>>>>>> %ebp-93700 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $93688, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23422, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-340(%ebp)           # local array 'v4': 5 dimensions
    movl    $1,-336(%ebp)           #   dimension 1: 1 elements
    movl    $2,-332(%ebp)           #   dimension 2: 2 elements
    movl    $2,-328(%ebp)           #   dimension 3: 2 elements
    movl    $6,-324(%ebp)           #   dimension 4: 6 elements
    movl    $3,-320(%ebp)           #   dimension 5: 3 elements
    movl    $5,-1516(%ebp)          # local array 'v5': 5 dimensions
    movl    $4,-1512(%ebp)          #   dimension 1: 4 elements
    movl    $8,-1508(%ebp)          #   dimension 2: 8 elements
    movl    $3,-1504(%ebp)          #   dimension 3: 3 elements
    movl    $2,-1500(%ebp)          #   dimension 4: 2 elements
    movl    $6,-1496(%ebp)          #   dimension 5: 6 elements
    movl    $5,-93700(%ebp)         # local array 'v6': 5 dimensions
    movl    $9,-93696(%ebp)         #   dimension 1: 9 elements
    movl    $8,-93692(%ebp)         #   dimension 2: 8 elements
    movl    $4,-93688(%ebp)         #   dimension 3: 4 elements
    movl    $10,-93684(%ebp)        #   dimension 4: 10 elements
    movl    $8,-93680(%ebp)         #   dimension 5: 8 elements

    # function body
    call    WriteLn                 #   0:     call   WriteLn
l_f2_2_while_cond:
    movl    $99, %eax               #   2:     if     99 >= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_6                  #   6:     goto   6
l_f2_6:
    leal    -93700(%ebp), %eax      #   8:     &()    t5 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  3 <- t5
    pushl   %eax                   
    movl    $100, %eax              #  10:     param  2 <- 100
    pushl   %eax                   
    leal    -1516(%ebp), %eax       #  11:     &()    t6 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  1 <- t6
    pushl   %eax                   
    leal    -340(%ebp), %eax        #  13:     &()    t7 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  15:     call   t8 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_f2_2_while_cond       #  16:     goto   2_while_cond
l_f2_1:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $93688, %esp            # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
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
    movl    $99727, %eax            #   0:     if     99727 < 74065 goto 4
    movl    $74065, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_4               
    jmp     l_test_5                #   1:     goto   5
l_test_4:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_0                #   9:     goto   0
l_test_0:
l_test_9_while_cond:
    movl    $21844, %eax            #  12:     div    t1 <- 21844, 18722
    movl    $18722, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     div    t2 <- t1, 46919
    movl    $46919, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     if     t2 < 79066 goto 10_while_body
    movl    $79066, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_10_while_body   
    jmp     l_test_8                #  15:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  17:     goto   9_while_cond
l_test_8:
    movl    $36105, %eax            #  19:     assign v1 <- 36105
    movl    %eax, v1               
    movl    $30224, %eax            #  20:     div    t3 <- 30224, 49559
    movl    $49559, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     mul    t4 <- t3, 46198
    movl    $46198, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     assign v1 <- t4
    movl    %eax, v1               

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
